import os
import subprocess

def run_command(cmd):
    print(f"\nRunning: {cmd}")
    result = subprocess.run(cmd, shell=True)
    if result.returncode != 0:
        print("❌ Error occurred!")
        exit()
    else:
        print("✅ Success")

def main():
    print("🚀 GCP Terraform Automation Script")

    project_id = input("Enter your GCP Project ID: ")

    os.environ["GOOGLE_CLOUD_PROJECT"] = project_id

    run_command("terraform init")
    run_command("terraform apply -auto-approve")

    print("\n🎉 Infrastructure deployed successfully!")

if __name__ == "__main__":
    main()