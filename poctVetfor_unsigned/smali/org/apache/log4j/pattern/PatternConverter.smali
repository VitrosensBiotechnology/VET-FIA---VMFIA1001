.class public abstract Lorg/apache/log4j/pattern/PatternConverter;
.super Ljava/lang/Object;
.source "PatternConverter.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final style:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/log4j/pattern/PatternConverter;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/apache/log4j/pattern/PatternConverter;->style:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public abstract format(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/log4j/pattern/PatternConverter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleClass(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lorg/apache/log4j/pattern/PatternConverter;->style:Ljava/lang/String;

    return-object v0
.end method
