.class public Lca/uhn/hl7v2/llp/ExtendedMinLLPReader;
.super Lca/uhn/hl7v2/llp/Hl7DecoderReader;
.source "ExtendedMinLLPReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/llp/Hl7DecoderReader<",
        "Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lca/uhn/hl7v2/llp/Hl7DecoderReader;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/llp/Hl7DecoderReader;-><init>(Ljava/io/InputStream;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/llp/Hl7DecoderReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 50
    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->close()V

    return-void
.end method

.method getLastCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lca/uhn/hl7v2/llp/ExtendedMinLLPReader;->getDecoder()Lca/uhn/hl7v2/llp/MllpDecoder;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;

    invoke-virtual {v0}, Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;->getLastCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDecoder()Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;
    .locals 2

    .line 54
    new-instance v0, Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;

    invoke-virtual {p0}, Lca/uhn/hl7v2/llp/ExtendedMinLLPReader;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method protected bridge synthetic initDecoder()Lca/uhn/hl7v2/llp/MllpDecoder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lca/uhn/hl7v2/llp/ExtendedMinLLPReader;->initDecoder()Lca/uhn/hl7v2/llp/ExtendedMllpDecoder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lca/uhn/hl7v2/llp/Hl7DecoderReader;->setInputStream(Ljava/io/InputStream;)V

    return-void
.end method
