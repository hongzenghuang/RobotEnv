From python:2.7
MAINTAINER zenghuang.hong@spiral.exchnage

RUN pip install -U \
    robotframework \
    robotframework-requests \
    pymysql \
    demjson \
    robotframework-jsonvalidator \
	robotframework-databaselibrary \
	BeautifulSoup \
	pyotp \
	pyjwt
	
RUN git clone git://github.com/charlierguo/gmail.git && cd gmail && python setup.py install

CMD ['pybot']