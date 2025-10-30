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

    const/16 v1, 0x3b

    const/4 v2, 0x3

    const/16 v3, 0xa

    const/4 v4, 0x4

    const/16 v5, 0x39

    const/16 v6, 0x30

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    packed-switch v0, :pswitch_data_b0

    return p1

    :pswitch_13
    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :pswitch_16
    if-gt v6, p1, :cond_30

    if-gt p1, v5, :cond_30

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    mul-int/2addr v0, v3

    invoke-static {p1, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v0, v9, :cond_41

    iput v4, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_43

    :cond_30
    if-ne p1, v1, :cond_41

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v0

    if-eqz v0, :cond_41

    :goto_3b
    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    iget p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char p1, p1

    return p1

    :cond_41
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    :goto_43
    return p1

    :pswitch_44
    if-gt v6, p1, :cond_48

    if-le p1, v5, :cond_58

    :cond_48
    const/16 v0, 0x61

    if-gt v0, p1, :cond_50

    const/16 v0, 0x66

    if-le p1, v0, :cond_58

    :cond_50
    const/16 v0, 0x41

    if-gt v0, p1, :cond_73

    const/16 v0, 0x46

    if-gt p1, v0, :cond_73

    :cond_58
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    const/16 v1, 0x10

    mul-int/2addr v0, v1

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v0, v4, :cond_70

    iput v2, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_7f

    :cond_70
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_7f

    :cond_73
    if-ne p1, v1, :cond_70

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v0

    if-eqz v0, :cond_70

    goto :goto_3b

    :goto_7f
    return p1

    :pswitch_80
    const/16 v0, 0x78

    if-ne p1, v0, :cond_8b

    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    iput v2, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_9c

    :cond_8b
    if-gt v6, p1, :cond_9a

    if-gt p1, v5, :cond_9a

    invoke-static {p1, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iput v7, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    iput v4, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_9c

    :cond_9a
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    :goto_9c
    return p1

    :pswitch_9d
    const/16 v0, 0x23

    if-ne p1, v0, :cond_a5

    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_a7

    :cond_a5
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    :goto_a7
    return p1

    :pswitch_a8
    const/16 v0, 0x26

    if-ne p1, v0, :cond_ae

    iput v7, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    :cond_ae
    return p1

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_9d
        :pswitch_80
        :pswitch_44
        :pswitch_16
        :pswitch_13
    .end packed-switch
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

    move v5, p2

    move v3, v1

    move v4, v3

    :goto_9
    move p2, v2

    :cond_a
    :goto_a
    if-eqz p2, :cond_49

    if-ge v3, p3, :cond_49

    invoke-super {p0, v0, v4, v2}, Ljava/io/PushbackReader;->read([CII)I

    move-result p2

    if-ne p2, v2, :cond_16

    move p2, v2

    goto :goto_17

    :cond_16
    move p2, v1

    :goto_17
    const/4 v6, 0x5

    if-eqz p2, :cond_40

    aget-char v7, v0, v4

    invoke-direct {p0, v7}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->processChar(C)C

    move-result v7

    iget v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    if-nez v8, :cond_34

    invoke-static {v7}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/16 v7, 0x20

    :cond_2c
    add-int/lit8 v4, v5, 0x1

    aput-char v7, p1, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v4

    goto :goto_3b

    :cond_34
    if-ne v8, v6, :cond_3d

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v0, v1, v4}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->unread([CII)V

    :goto_3b
    move v4, v1

    goto :goto_a

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_40
    if-lez v4, :cond_a

    invoke-virtual {p0, v0, v1, v4}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->unread([CII)V

    iput v6, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    move v4, v1

    goto :goto_9

    :cond_49
    if-gtz v3, :cond_4f

    if-eqz p2, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v3, -0x1

    :cond_4f
    :goto_4f
    return v3
.end method
