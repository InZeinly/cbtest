[
  {
    "name": "${app_name}-${env}-app",
    "image": "${image}",
    "cpu": ${web_server_fargate_cpu},
    "memory": ${web_server_fargate_memory},
    "networkMode": "awsvpc",
    "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/ecs/cb-app",
          "awslogs-region": "${aws_region}",
          "awslogs-stream-prefix": "ecs"
        }
    },
    "portMappings": [
      {
        "containerPort": ${app_port},
        "hostPort": ${app_port}
      }
    ],
    "environment": [
      {
        "name": "VERSION",
        "value": "${image_tag}"
      }
    ]
  }
]