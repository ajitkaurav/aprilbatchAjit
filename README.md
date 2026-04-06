# Java Application with GitHub Actions

This is a simple Java application that demonstrates how to build a JAR package using Maven and automatically upload it as a GitHub artifact using GitHub Actions.

## Project Structure

```
aprilbatch/
├── .github/
│   └── workflows/
│       └── build.yml          # GitHub Actions workflow
├── src/
│   └── main/
│       └── java/
│           └── com/
│               └── example/
│                   └── app/
│                       └── App.java    # Main application
├── pom.xml                    # Maven configuration
└── .gitignore                 # Git ignore rules
```

## Prerequisites

- Java 11 or higher
- Maven 3.6 or higher

## Building Locally

To build the JAR package on your local machine:

```bash
mvn clean package
```

The JAR file will be created in the `target/` directory as `java-app-1.0.0.jar`.

## Running the Application

After building, run the application with:

```bash
java -jar target/java-app-1.0.0.jar
```

You can also pass arguments:

```bash
java -jar target/java-app-1.0.0.jar arg1 arg2
```

## GitHub Actions Workflow

The workflow (`.github/workflows/build.yml`) automatically:

1. **Triggers on**:
   - Push to `main` or `master` branch
   - Pull requests to `main` or `master` branch
   - Manual workflow dispatch

2. **Build Steps**:
   - Checks out the code
   - Sets up JDK 11
   - Builds the project with Maven
   - Uploads the JAR as a GitHub artifact
   - Displays artifact information

## Downloading the Artifact

After the workflow runs successfully:

1. Go to your repository on GitHub
2. Click on the "Actions" tab
3. Select the latest workflow run
4. Scroll down to the "Artifacts" section
5. Download the `java-app-jar` artifact

The artifact will be retained for 30 days.

## Customization

- **Change Java version**: Update the version in `pom.xml` and `.github/workflows/build.yml`
- **Change artifact name**: Modify the `name` field in the `upload-artifact` step
- **Change retention period**: Modify the `retention-days` field (1-90 days)
- **Add dependencies**: Add them to the `<dependencies>` section in `pom.xml`

## License

This project is provided as-is for educational purposes.