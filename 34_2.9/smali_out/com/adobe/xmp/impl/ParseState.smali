.class Lcom/adobe/xmp/impl/ParseState;
.super Ljava/lang/Object;


# instance fields
.field private pos:I

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iput-object p1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ch()C
    .registers 3

    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    iget p0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public ch(I)C
    .registers 3

    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_f

    iget-object p0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public gatherInt(Ljava/lang/String;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    const/16 v4, 0x30

    if-gt v4, v0, :cond_21

    const/16 v4, 0x39

    if-gt v0, v4, :cond_21

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v2, v0

    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    goto :goto_9

    :cond_21
    if-eqz v3, :cond_2a

    if-le v2, p2, :cond_26

    return p2

    :cond_26
    if-gez v2, :cond_29

    return v1

    :cond_29
    return v2

    :cond_2a
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/4 p2, 0x5

    invoke-direct {p0, p1, p2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public hasNext()Z
    .registers 2

    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iget-object p0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public length()I
    .registers 1

    iget-object p0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public pos()I
    .registers 1

    iget p0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    return p0
.end method

.method public skip()V
    .registers 2

    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    return-void
.end method
