## The Infrastructure-as-Code (IaC) repository for my Liftgenius project

It uses [OpenTofu](https://opentofu.org/) and [LocalStack](https://github.com/localstack/localstack) to allow for quickly spinning up the necessary infrastructure for Liftgenius.

* **AWS S3 Buckets** Hold media and allow for presigned URLs to be shared by the various components of Liftgenius (user uploads, Lambda function download, processed video uploads)

* **AWS Lambda** To run inference on the first frame of a video to detect a weightlifitng bar-end and draw the bounding box if one is found. It is deployed as a Docker image built with AWS SAM.

* **RabbitMQ** The message queue for video processing jobs produced by the Phoenix web application (using Broadway) and consumed by the video processing server (Python and OpenCV using Pika). Allows for video processing jobs to be processed as the video server(s) as ready and communicate the job status in real-time.

* **AWS EC2** The server(s) for video processing jobs and the PostgreSQL server for the Phoenix web application.

