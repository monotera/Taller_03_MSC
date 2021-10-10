FROM python:3

VOLUME [ "/code" ]

RUN pip install Django
COPY start.sh start.sh
CMD ["bash", "start.sh"]