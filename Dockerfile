FROM gradescope/autograder-base:ubuntu-22.04

COPY ./grader/run_autograder /autograder/
COPY ./grader/setup.sh /autograder/

COPY ./source /autograder/source/

WORKDIR /autograder
RUN sh /autograder/setup.sh
ENTRYPOINT [ "/autograder/run_autograder" ]
