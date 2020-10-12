[
  {
    "name": "cb-app",
    "image": "${app_image}",
    "cpu": ${fargate_cpu},
    "memory": ${fargate_memory},
    "networkMode": "awsvpc",
    "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/ecs/cb-app",
          "awslogs-region": "${aws_region}",
          "awslogs-stream-prefix": "ecs"
        }
    },
    "environment": [
      {
        "name": "AUTH_SALT",
        "value": "CHANGEMEfffCHANGEME"
      },
      {
        "name": "DATABASE",
        "value": "postgres"
      },
      {
        "name": "DATABASE_URL",
        "value": "postgres://mama:PfRrj6F1p9cEq0VQqMB6@mama-db.cluster-chziwnfdqpuy.eu-west-3.rds.amazonaws.com/postgres"
      },
      {
        "name": "JWT_EXPIRATION",
        "value": "24"
      },
      {
        "name": "JWT_KEY",
        "value": "4125442A472D4B614E645267556B58703273357638792F423F4528482B4D6251"
      },
      {
        "name": "PATH",
        "value": "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
      },
      {
        "name": "REDIS_URL",
        "value": ""
      },
      {
        "name": "RUST_BACKTRACE",
        "value": "1"
      },
      {
        "name": "RUST_LOG",
        "value": "\"actix_web=info,actix_server=info,actix_redis=trace\""
      },
      {
        "name": "SERVER",
        "value": "0.0.0.0:3000"
      },
      {
        "name": "SESSION_KEY",
        "value": "4125442A472D4B614E645267556B58703273357638792F423F4528482B4D6251"
      },
      {
        "name": "SESSION_NAME",
        "value": "auth"
      },
      {
        "name": "SESSION_SECURE",
        "value": "false"
      },
      {
        "name": "SESSION_TIMEOUT",
        "value": "20"
      }
    ],
    "portMappings": [
      {
        "containerPort": ${app_port},
        "hostPort": ${app_port},
        "protocol": "tcp"
      }
    ]
  }
]