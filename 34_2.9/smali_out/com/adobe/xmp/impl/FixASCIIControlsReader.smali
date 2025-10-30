.class public Lcom/adobe/xmp/impl/FixASCIIControlsReader;
.super Ljava/io/PushbackReader;


# static fields
.field private static final BUFFER_SIZE:I = 0x8

.field private static final STATE_AMP:I = 0x1

.field private static final STATE_DIG1:I = 0x4

.field private static final STATE_ERROR:I = 0x5

.field private static final STATE_HASH:I = 0x2

.field private static final STATE_HEX:I = 0x3

.field private static final STATE_START:I


# instance fields
.field private control:I

.field private digits:I

.field private state:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    iput p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iput p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    return-void
.end method

.method private processChar(C)C
    .registers 12

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_ad

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-eq v0, v1, :cond_a3

    const/16 v4, 0xa

    const/16 v5, 0x39

    const/16 v6, 0x30

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eq v0, v2, :cond_86

    const/16 v2, 0x3b

    if-eq v0, v7, :cond_4c

    if-eq v0, v8, :cond_20

    if-eq v0, v3, :cond_1d

    return p1

    :cond_1d
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :cond_20
    if-gt v6, p1, :cond_38

    if-gt p1, v5, :cond_38

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    mul-int/2addr v0, v4

    invoke-static {p1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v0, v3, :cond_49

    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_4b

    :cond_38
    if-ne p1, v2, :cond_49

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v0

    if-eqz v0, :cond_49

    :goto_43
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    iget p0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char p0, p0

    return p0

    :cond_49
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    :goto_4b
    return p1

    :cond_4c
    if-gt v6, p1, :cond_50

    if-le p1, v5, :cond_60

    :cond_50
    const/16 v0, 0x61

    if-gt v0, p1, :cond_58

    const/16 v0, 0x66

    if-le p1, v0, :cond_60

    :cond_58
    const/16 v0, 0x41

    if-gt v0, p1, :cond_79

    const/16 v0, 0x46

    if-gt p1, v0, :cond_79

    :cond_60
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    const/16 v2, 0x10

    mul-int/2addr v0, v2

    invoke-static {p1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v0, v8, :cond_76

    iput v7, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_85

    :cond_76
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_85

    :cond_79
    if-ne p1, v2, :cond_76

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v0

    if-eqz v0, :cond_76

    goto :goto_43

    :goto_85
    return p1

    :cond_86
    const/16 v0, 0x78

    if-ne p1, v0, :cond_91

    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    iput v7, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_a2

    :cond_91
    if-gt v6, p1, :cond_a0

    if-gt p1, v5, :cond_a0

    invoke-static {p1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_a2

    :cond_a0
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    :goto_a2
    return p1

    :cond_a3
    const/16 v0, 0x23

    if-ne p1, v0, :cond_aa

    iput v2, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_ac

    :cond_aa
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    :goto_ac
    return p1

    :cond_ad
    const/16 v0, 0x26

    if-ne p1, v0, :cond_b3

    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    :cond_b3
    return p1
.end method


# virtual methods
.method public read([CII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v5, v4

    :goto_8
    move v3, v2

    :cond_9
    :goto_9
    if-eqz v3, :cond_45

    if-ge v4, p3, :cond_45

    invoke-super {p0, v0, v5, v2}, Ljava/io/PushbackReader;->read([CII)I

    move-result v3

    if-ne v3, v2, :cond_15

    move v3, v2

    goto :goto_16

    :cond_15
    move v3, v1

    :goto_16
    const/4 v6, 0x5

    if-eqz v3, :cond_3c

    aget-char v7, v0, v5

    invoke-direct {p0, v7}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->processChar(C)C

    move-result v7

    iget v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    if-nez v8, :cond_33

    invoke-static {v7}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v7, 0x20

    :cond_2b
    add-int/lit8 v5, p2, 0x1

    aput-char v7, p1, p2

    add-int/lit8 v4, v4, 0x1

    move p2, v5

    goto :goto_3a

    :cond_33
    add-int/lit8 v5, v5, 0x1

    if-ne v8, v6, :cond_9

    invoke-virtual {p0, v0, v1, v5}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->unread([CII)V

    :goto_3a
    move v5, v1

    goto :goto_9

    :cond_3c
    if-lez v5, :cond_9

    invoke-virtual {p0, v0, v1, v5}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->unread([CII)V

    iput v6, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    move v5, v1

    goto :goto_8

    :cond_45
    if-gtz v4, :cond_4b

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v4, -0x1

    :cond_4b
    :goto_4b
    return v4
.end method
