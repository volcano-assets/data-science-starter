FROM python:3.8.1-alpine
  RUN apk --no-cache add git
  RUN pip install --user cookiecutter
  ENV PATH "$PATH:/root/.local/bin"

  RUN mkdir -p /project

  WORKDIR /project

  ENTRYPOINT ["cookiecutter", "https://github.com/licancabur-management/cookiecutter-data-science"]
