import json
import boto3
import urllib.parse
import csv
from io import StringIO

s3 = boto3.client('s3')
dynamodb = boto3.resource('dynamodb')

def lambda_handler(event, context):
    print("Recived event: " + json.dumps(event))

    bucket = event['Records'][0]['s3']['bucket']['name']
    key = urllib.parse.unquote_plus(event['Records'][0]['s3']['object']['key'], encoding='utf-8')

    response = s3.get_object(Bucket=bucket, Key=key)
    text = response['Body'].read().decode('utf-8')

    print("Text in file: " + text)

    buff = StringIO(text)
    reader = csv.DictReader(buff)

    table = dynamodb.Table('healthcare')

    for row in reader:
        table.put_item(
            Item={
                'Pregnancies': row['Pregnancies'],
                'Glucose': row['Glucose'],
                'BloodPressure': row['BloodPressure'],
                'SkinThickness': row['SkinThickness'],
                'Insulin': row['Insulin'],
                'BMI': row['BMI'],
                'DiabetesPedigreeFunction': row['DiabetesPedigreeFunction'],
                'Age': row['Age'],
                'Outcome': row['Outcome'],
                'Id': row['Id']

            })
