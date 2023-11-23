[
    {
      "memoryReservation": 200,
      "image": "{{DOCKER_IMAGE}}",
      "essential": false,
      "name": "{{NAME}}",
      "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-create-group": "true",
          "awslogs-group": "{{AWS_LOG_GROUP}}",
          "awslogs-region": "{{AWS_REGION}}",
          "awslogs-stream-prefix": "ecs"
        }
      },
      "portMappings": [
        {
          "hostPort": {{HOST_PORT}},
          "protocol": "tcp",
          "containerPort": {{CONTAINER_PORT}}
        }
      ]
    }
]
