.class final Lorg/apache/log4j/chainsaw/MyTableModel$1;
.super Ljava/lang/Object;
.source "MyTableModel.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9
    .param p1, "aObj1"    # Ljava/lang/Object;
    .param p2, "aObj2"    # Ljava/lang/Object;

    .line 49
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 50
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 52
    return v0

    .line 53
    :cond_1
    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 54
    return v1

    .line 58
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/log4j/chainsaw/EventDetails;

    .line 59
    .local v2, "le1":Lorg/apache/log4j/chainsaw/EventDetails;
    move-object v3, p2

    check-cast v3, Lorg/apache/log4j/chainsaw/EventDetails;

    .line 61
    .local v3, "le2":Lorg/apache/log4j/chainsaw/EventDetails;
    invoke-virtual {v2}, Lorg/apache/log4j/chainsaw/EventDetails;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/log4j/chainsaw/EventDetails;->getTimeStamp()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    .line 62
    return v1

    .line 65
    :cond_3
    return v0
.end method
