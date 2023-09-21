.class public Lca/uhn/hl7v2/model/v24/datatype/MSG;
.super Lca/uhn/hl7v2/model/AbstractComposite;
.source "MSG.java"


# instance fields
.field private data:[Lca/uhn/hl7v2/model/Type;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 15
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 16
    invoke-direct {p0}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->init()V

    .line 17
    return-void
.end method

.method private init()V
    .locals 4

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lca/uhn/hl7v2/model/Type;

    iput-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/MSG;->data:[Lca/uhn/hl7v2/model/Type;

    .line 22
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/MSG;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    aput-object v1, v0, v3

    .line 23
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/MSG;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 24
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/MSG;->data:[Lca/uhn/hl7v2/model/Type;

    new-instance v1, Lca/uhn/hl7v2/model/v24/datatype/ID;

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;-><init>(Lca/uhn/hl7v2/model/Message;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 25
    return-void
.end method


# virtual methods
.method public getComponent(I)Lca/uhn/hl7v2/model/Type;
    .locals 4
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 37
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/MSG;->data:[Lca/uhn/hl7v2/model/Type;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Element "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist (Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lca/uhn/hl7v2/model/v24/datatype/MSG;->data:[Lca/uhn/hl7v2/model/Type;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " components)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getComponents()[Lca/uhn/hl7v2/model/Type;
    .locals 1

    .line 29
    iget-object v0, p0, Lca/uhn/hl7v2/model/v24/datatype/MSG;->data:[Lca/uhn/hl7v2/model/Type;

    return-object v0
.end method

.method public getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 67
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 47
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getMsg1_MessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 52
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getMsg2_TriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 62
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getMsg3_MessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 72
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method

.method public getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;
    .locals 2

    .line 57
    const-class v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/v24/datatype/ID;

    return-object v0
.end method
