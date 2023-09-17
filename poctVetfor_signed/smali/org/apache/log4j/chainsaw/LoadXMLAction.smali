.class Lorg/apache/log4j/chainsaw/LoadXMLAction;
.super Ljavax/swing/AbstractAction;
.source "LoadXMLAction.java"


# static fields
.field private static final LOG:Lorg/apache/log4j/Logger;

.field static synthetic class$org$apache$log4j$chainsaw$LoadXMLAction:Ljava/lang/Class;


# instance fields
.field private final mChooser:Ljavax/swing/JFileChooser;

.field private final mHandler:Lorg/apache/log4j/chainsaw/XMLFileHandler;

.field private final mParent:Ljavax/swing/JFrame;

.field private final mParser:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->class$org$apache$log4j$chainsaw$LoadXMLAction:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.LoadXMLAction"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/LoadXMLAction;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->class$org$apache$log4j$chainsaw$LoadXMLAction:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->class$org$apache$log4j$chainsaw$LoadXMLAction:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->LOG:Lorg/apache/log4j/Logger;

    return-void
.end method

.method constructor <init>(Ljavax/swing/JFrame;Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 2
    .param p1, "aParent"    # Ljavax/swing/JFrame;
    .param p2, "aModel"    # Lorg/apache/log4j/chainsaw/MyTableModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljavax/swing/AbstractAction;-><init>()V

    .line 53
    new-instance v0, Ljavax/swing/JFileChooser;

    invoke-direct {v0}, Ljavax/swing/JFileChooser;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mChooser:Ljavax/swing/JFileChooser;

    .line 55
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mChooser:Ljavax/swing/JFileChooser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->setMultiSelectionEnabled(Z)V

    .line 56
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mChooser:Ljavax/swing/JFileChooser;

    invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->setFileSelectionMode(I)V

    .line 76
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParent:Ljavax/swing/JFrame;

    .line 77
    new-instance v0, Lorg/apache/log4j/chainsaw/XMLFileHandler;

    invoke-direct {v0, p2}, Lorg/apache/log4j/chainsaw/XMLFileHandler;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mHandler:Lorg/apache/log4j/chainsaw/XMLFileHandler;

    .line 78
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParser:Lorg/xml/sax/XMLReader;

    .line 79
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParser:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mHandler:Lorg/apache/log4j/chainsaw/XMLFileHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 80
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 44
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 44
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private loadFile(Ljava/lang/String;)I
    .locals 5
    .param p1, "aFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParser:Lorg/xml/sax/XMLReader;

    monitor-enter v0

    .line 123
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v1, "buf":Ljava/lang/StringBuffer;
    const-string v2, "<?xml version=\"1.0\" standalone=\"yes\"?>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v2, "<!DOCTYPE log4j:eventSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v2, "[<!ENTITY data SYSTEM \"file:///"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v2, "\">]>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v2, "<log4j:eventSet xmlns:log4j=\"Claira\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v2, "&data;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v2, "</log4j:eventSet>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 135
    .local v2, "is":Lorg/xml/sax/InputSource;
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParser:Lorg/xml/sax/XMLReader;

    invoke-interface {v3, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 136
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mHandler:Lorg/apache/log4j/chainsaw/XMLFileHandler;

    invoke-virtual {v3}, Lorg/apache/log4j/chainsaw/XMLFileHandler;->getNumEvents()I

    move-result v3

    monitor-exit v0

    return v3

    .line 137
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "is":Lorg/xml/sax/InputSource;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 6
    .param p1, "aIgnore"    # Ljava/awt/event/ActionEvent;

    .line 87
    sget-object v0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->LOG:Lorg/apache/log4j/Logger;

    const-string v1, "load file called"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mChooser:Ljavax/swing/JFileChooser;

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParent:Ljavax/swing/JFrame;

    invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->LOG:Lorg/apache/log4j/Logger;

    const-string v1, "Need to load a file"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mChooser:Ljavax/swing/JFileChooser;

    invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v0

    .line 91
    .local v0, "chosen":Ljava/io/File;
    sget-object v1, Lorg/apache/log4j/chainsaw/LoadXMLAction;->LOG:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "loading the contents of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 93
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/log4j/chainsaw/LoadXMLAction;->loadFile(Ljava/lang/String;)I

    move-result v1

    .line 94
    .local v1, "num":I
    iget-object v2, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParent:Ljavax/swing/JFrame;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " events."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CHAINSAW"

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "num":I
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/log4j/chainsaw/LoadXMLAction;->LOG:Lorg/apache/log4j/Logger;

    const-string v3, "caught an exception loading the file"

    invoke-virtual {v2, v3, v1}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 101
    iget-object v2, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParent:Ljavax/swing/JFrame;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Error parsing file - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CHAINSAW"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 108
    .end local v0    # "chosen":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
