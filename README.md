# MyBatis-Generator-demo
教科书级别使用mybatis代码生成器（逆向工程），兼容lombok。

所以生成的代码没有getter、setter以及**Example.java文件，会有一堆lombok的注释。



# 如何使用

这是个maven项目，所有jar包使用maven导入。

编辑mbg.xml文件。(用户名、密码、数据库位置、要生成的表格等)

运行generator.java的main方法。

如果需要，可以重写plugin方法。

# 运行

如果有错误，在运行generator后控制台会输出错误。

mbg.xml中，类Unix环境下路径的斜杠和Windows的路径斜杠不一样（'/'与'\\'的区别）

运行成功后，src/main/java/cn/vskendo下会出现result文件夹，里面就是生成的结果。

如果想自定义 列属性或者列的名字，请在mbg.xml的 table 标签中 添加元素： 

<columnOverride column="abc" javaType="java.lang.String" jdbcType="VARCHAR" />

在上述示例中，列abc在数据库里是varchar，生成的实体类的字段是String



# 目录结构

```
.
├── README.md
└── mbg
    ├── mbg.iml
    ├── pom.xml
    ├── sql
    │   └── test.sql
    ├── src
    │   └── main
    │       ├── java
    │       │   └── cn
    │       │       └── vskendo
    │       │           └── core
    │       │               ├── generation.java
    │       │               └── lombokPlugin.java
    │       └── resources
    │           └── mbg.xml
    └── target
        ├── classes
        │   ├── cn
        │   │   └── vskendo
        │   │       └── core
        │   │           ├── generation.class
        │   │           └── lombokPlugin.class
        │   └── mbg.xml
        └── generated-sources
            └── annotations

16 directories, 10 files
```

