#Creating a Static Website using Terraform

This repository provides a comprehensive guide on how to create a static website using Terraform and host it on AWS S3. Follow these step-by-step instructions to successfully set up your static website:

##Prerequisites

Before you start, make sure you have the necessary prerequisites in place:

1. **AWS Account**: You'll need an AWS account to create the required resources.
2. **Terraform Installation**: Ensure you have Terraform installed on your local machine.
3. **AWS CLI Setup**: Configure the AWS CLI with your credentials to manage your AWS resources.

##Steps

###1. Create an S3 Bucket

Begin by creating an S3 bucket that will store your static website files. Choose a unique and globally-unique name for your bucket. This name should not conflict with any existing bucket names across all AWS accounts.

###2. Configure Bucket for Static Website Hosting

After creating the S3 bucket, navigate to the bucket properties. Enable static website hosting and define the default index document (such as "index.html") and, optionally, an error document (like "error.html").

###3. Upload Website Files

Transfer your website's static files (HTML, CSS, JS, images, etc.) to the S3 bucket. It's important to ensure that the appropriate permissions (e.g., "public-read") are set for these objects, allowing them to be accessible to the public.

###4. Enable Public Access

For your website to be publicly accessible, you need to configure the bucket policy or Access Control Lists (ACLs) to allow public access to the S3 bucket and its objects.

###5. Configure DNS (Optional)

If you wish to use a custom domain for your website, you can set up a DNS record using Route 53 or another DNS provider. Remember that this step is optional if you are content with using the default S3 website endpoint.

###6. Running Terraform

Navigate to the **terraform** directory and initiate Terraform using the command **terraform init**. Inside the **main.tf** file, you can customize various settings to match your preferences.

To apply the Terraform configuration, you have two options:

    Manual Approval (Default): Run **terraform apply** and you'll be prompted to approve the changes. Type **yes** to proceed.

    Automatic Approval (Optional): To automatically apply changes without being prompted, you can use the **-auto-approve** flag: **terraform apply -auto-approve**.

##Testing

Once you've completed the setup, you can test your static website. Access it either through the S3 bucket website URL or your custom domain if you've configured one.

Feel free to personalize the website's content and design by modifying the files within your S3 bucket. If needed, you can re-run the Terraform configuration to update your website with ease.