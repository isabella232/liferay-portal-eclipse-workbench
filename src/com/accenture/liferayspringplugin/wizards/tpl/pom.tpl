<?xml version="1.0"?>

<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<groupId>${groupId}</groupId>
	<artifactId>${artifactId}</artifactId>
	<packaging>war</packaging>
	<name>${artifactId} Portlet</name>
	<version>${version}</version>
	<build>
		<plugins>
			<plugin>
				<groupId>com.liferay.maven.plugins</groupId>
				<artifactId>liferay-maven-plugin</artifactId>
				<version>${d}{liferay.maven.plugin.version}</version>
				<executions>
					<execution>
						<phase>generate-sources</phase>
						<goals>
							<goal>build-css</goal>
						</goals>
					</execution>
				</executions>
				<configuration>
					<autoDeployDir>${d}{liferay.auto.deploy.dir}</autoDeployDir>
					<appServerDeployDir>${d}{liferay.app.server.deploy.dir}</appServerDeployDir>
					<appServerLibGlobalDir>${d}{liferay.app.server.lib.global.dir}</appServerLibGlobalDir>
					<appServerPortalDir>${d}{liferay.app.server.portal.dir}</appServerPortalDir>
					<liferayVersion>${d}{liferay.version}</liferayVersion>
					<pluginType>portlet</pluginType>
				</configuration>
			</plugin>
			<plugin>
				<artifactId>maven-compiler-plugin</artifactId>
				<version>2.5</version>
				<configuration>
					<encoding>UTF-8</encoding>
					<source>1.6</source>
					<target>1.6</target>
				</configuration>
			</plugin>
			<plugin>
				<artifactId>maven-resources-plugin</artifactId>
				<version>2.5</version>
				<configuration>
					<encoding>UTF-8</encoding>
				</configuration>
			</plugin>
		</plugins>
	</build>
	<dependencies>
		<dependency>
			<groupId>com.liferay.portal</groupId>
			<artifactId>portal-service</artifactId>
			<version>${d}{liferay.version}</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>com.liferay.portal</groupId>
			<artifactId>util-bridges</artifactId>
			<version>${d}{liferay.version}</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>com.liferay.portal</groupId>
			<artifactId>util-taglib</artifactId>
			<version>${d}{liferay.version}</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>com.liferay.portal</groupId>
			<artifactId>util-java</artifactId>
			<version>${d}{liferay.version}</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>javax.portlet</groupId>
			<artifactId>portlet-api</artifactId>
			<version>2.0</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>servlet-api</artifactId>
			<version>2.4</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>javax.servlet.jsp</groupId>
			<artifactId>jsp-api</artifactId>
			<version>2.0</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>jstl</artifactId>
			<version>1.2</version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-aop</artifactId>
			<version>3.0.7.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-beans</artifactId>
			<version>3.0.7.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-context</artifactId>
			<version>3.0.7.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-core</artifactId>
			<version>3.0.7.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-expression</artifactId>
			<version>3.0.7.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-web</artifactId>
			<version>3.0.7.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-webmvc</artifactId>
			<version>3.0.7.RELEASE</version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-webmvc-portlet</artifactId>
			<version>3.0.7.RELEASE</version>
		</dependency>
		${logger}
	</dependencies>
</project>