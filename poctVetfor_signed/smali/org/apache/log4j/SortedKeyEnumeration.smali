.class Lorg/apache/log4j/SortedKeyEnumeration;
.super Ljava/lang/Object;
.source "PropertyConfigurator.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private e:Ljava/util/Enumeration;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 8
    .param p1, "ht"    # Ljava/util/Hashtable;

    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 977
    .local v0, "f":Ljava/util/Enumeration;
    new-instance v1, Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 978
    .local v1, "keys":Ljava/util/Vector;
    const/4 v2, 0x0

    move v3, v2

    .line 978
    .local v3, "last":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 979
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 980
    .local v4, "key":Ljava/lang/String;
    move v5, v2

    .line 980
    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 981
    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 982
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gtz v7, :cond_0

    goto :goto_2

    .line 980
    .end local v6    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 984
    :cond_1
    :goto_2
    invoke-virtual {v1, v5, v4}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 978
    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 986
    .end local v3    # "last":I
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/SortedKeyEnumeration;->e:Ljava/util/Enumeration;

    .line 987
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 990
    iget-object v0, p0, Lorg/apache/log4j/SortedKeyEnumeration;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 994
    iget-object v0, p0, Lorg/apache/log4j/SortedKeyEnumeration;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
