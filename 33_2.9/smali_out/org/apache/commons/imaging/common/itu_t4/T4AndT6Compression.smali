.class public final Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;
.super Ljava/lang/Object;
.source "T4AndT6Compression.java"


# static fields
.field public static final BLACK:I = 0x1

.field private static final BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree<",
            "Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHITE:I

.field private static final WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 28
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-direct {v0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    .line 29
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-direct {v0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    .line 30
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-direct {v0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    .line 37
    :try_start_15
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->WHITE_TERMINATING_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_2a

    aget-object v4, v0, v3

    .line 38
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v4}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 40
    :cond_2a
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->WHITE_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    move v3, v2

    :goto_2e
    if-ge v3, v1, :cond_3e

    aget-object v4, v0, v3

    .line 41
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v4}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 43
    :cond_3e
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->BLACK_TERMINATING_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    move v3, v2

    :goto_42
    if-ge v3, v1, :cond_52

    aget-object v4, v0, v3

    .line 44
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v4}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 46
    :cond_52
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->BLACK_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    move v3, v2

    :goto_56
    if-ge v3, v1, :cond_66

    aget-object v4, v0, v3

    .line 47
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v4}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 49
    :cond_66
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->ADDITIONAL_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    :goto_69
    if-ge v2, v1, :cond_82

    aget-object v3, v0, v2

    .line 50
    sget-object v4, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v5, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v6, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    sget-object v4, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v5, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v3}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 53
    :cond_82
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL13:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL13:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL14:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL14:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL15:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL15:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL17:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL17:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL18:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL18:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL19:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL19:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11d
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_15 .. :try_end_11d} :catch_11e

    return-void

    :catch_11e
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changingElementAt([II)I
    .registers 3

    if-ltz p1, :cond_9

    .line 731
    array-length v0, p0

    if-lt p1, v0, :cond_6

    goto :goto_9

    .line 734
    :cond_6
    aget p0, p0, p1

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x0

    return p0
.end method

.method private static compress1DLine(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    if-ge v0, p3, :cond_24

    const/4 v3, 0x1

    .line 86
    :try_start_6
    invoke-virtual {p0, v3}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->readBits(I)I

    move-result v4

    if-eqz p2, :cond_e

    .line 88
    aput v4, p2, v0

    :cond_e
    if-ne v2, v4, :cond_13

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 93
    :cond_13
    invoke-static {p1, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_16} :catch_1b

    move v1, v3

    move v2, v4

    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_1b
    move-exception p0

    .line 98
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p2, "Error reading image to compress"

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 102
    :cond_24
    invoke-static {p1, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    return-void
.end method

.method public static compressModifiedHuffman([BII)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    .line 119
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_10
    if-ge v1, p2, :cond_1f

    const/4 v2, 0x0

    .line 121
    invoke-static {v0, p0, v2, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compress1DLine(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[II)V

    .line 122
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 125
    :cond_1f
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static compressT4_1D([BIIZ)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    .line 181
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    if-eqz p3, :cond_17

    .line 183
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    goto :goto_1c

    .line 185
    :cond_17
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    :goto_1c
    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    if-ge v2, p2, :cond_45

    const/4 v3, 0x0

    .line 189
    invoke-static {v0, p0, v3, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compress1DLine(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[II)V

    if-eqz p3, :cond_3a

    .line 191
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->getBitsAvailableInCurrentByte()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_32

    .line 194
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    const/16 v3, 0x8

    :cond_32
    :goto_32
    if-le v3, v4, :cond_3a

    .line 198
    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    .line 201
    :cond_3a
    sget-object v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v3, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 202
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 205
    :cond_45
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static compressT4_2D([BIIZI)[B
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    move/from16 v0, p1

    .line 266
    new-instance v1, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    .line 267
    new-instance v2, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    .line 268
    new-array v3, v0, [I

    .line 269
    new-array v4, v0, [I

    if-eqz p3, :cond_1f

    .line 272
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    goto :goto_24

    .line 274
    :cond_1f
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    :goto_24
    const/4 v5, 0x0

    move/from16 v6, p2

    move v7, v5

    move v8, v7

    :goto_29
    if-ge v7, v6, :cond_10b

    const/4 v9, 0x1

    if-lez v8, :cond_dc

    .line 280
    invoke-virtual {v2, v5}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    move v10, v5

    :goto_32
    if-ge v10, v0, :cond_46

    .line 283
    :try_start_34
    invoke-virtual {v1, v9}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->readBits(I)I

    move-result v11

    aput v11, v4, v10
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3a} :catch_3d

    add-int/lit8 v10, v10, 0x1

    goto :goto_32

    :catch_3d
    move-exception v0

    .line 285
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "Error reading image to compress"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 290
    :cond_46
    invoke-static {v4, v5, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    .line 291
    invoke-static {v3, v5, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v11

    add-int/lit8 v12, v11, 0x1

    .line 292
    invoke-static {v3, v9, v12}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v12

    move v13, v5

    move v14, v13

    :goto_56
    if-ge v13, v0, :cond_d6

    if-ge v12, v10, :cond_61

    .line 295
    sget-object v10, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v10, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    :goto_5f
    move v13, v12

    goto :goto_ab

    :cond_61
    sub-int v11, v10, v11

    const/4 v12, -0x3

    if-gt v12, v11, :cond_93

    const/4 v15, 0x3

    if-gt v11, v15, :cond_93

    if-ne v11, v12, :cond_6e

    .line 302
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_8c

    :cond_6e
    const/4 v12, -0x2

    if-ne v11, v12, :cond_74

    .line 304
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_8c

    :cond_74
    const/4 v12, -0x1

    if-ne v11, v12, :cond_7a

    .line 306
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_8c

    :cond_7a
    if-nez v11, :cond_7f

    .line 308
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_8c

    :cond_7f
    if-ne v11, v9, :cond_84

    .line 310
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_8c

    :cond_84
    const/4 v12, 0x2

    if-ne v11, v12, :cond_8a

    .line 312
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_8c

    .line 314
    :cond_8a
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 316
    :goto_8c
    invoke-virtual {v11, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    rsub-int/lit8 v14, v14, 0x1

    move v13, v10

    goto :goto_ab

    :cond_93
    rsub-int/lit8 v11, v14, 0x1

    add-int/lit8 v12, v10, 0x1

    .line 320
    invoke-static {v4, v11, v12}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v12

    sub-int v13, v10, v13

    sub-int v10, v12, v10

    .line 323
    sget-object v15, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v15, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 324
    invoke-static {v2, v13, v14}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    .line 325
    invoke-static {v2, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    goto :goto_5f

    .line 329
    :goto_ab
    invoke-static {v3, v13}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->changingElementAt([II)I

    move-result v10

    add-int/lit8 v11, v13, 0x1

    .line 330
    invoke-static {v4, v14, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v12

    if-ne v14, v10, :cond_bc

    .line 332
    invoke-static {v3, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    goto :goto_c7

    .line 334
    :cond_bc
    invoke-static {v3, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v11

    rsub-int/lit8 v10, v10, 0x1

    add-int/2addr v11, v9

    .line 335
    invoke-static {v3, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    :goto_c7
    move v11, v10

    rsub-int/lit8 v10, v14, 0x1

    add-int/lit8 v15, v11, 0x1

    .line 337
    invoke-static {v3, v10, v15}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v16

    goto :goto_56

    :cond_d6
    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    goto :goto_e2

    .line 344
    :cond_dc
    invoke-virtual {v2, v9}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    .line 345
    invoke-static {v1, v2, v3, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compress1DLine(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[II)V

    :goto_e2
    if-eqz p3, :cond_f8

    .line 348
    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->getBitsAvailableInCurrentByte()I

    move-result v9

    const/4 v10, 0x4

    if-ge v9, v10, :cond_f0

    .line 351
    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    const/16 v9, 0x8

    :cond_f0
    :goto_f0
    if-le v9, v10, :cond_f8

    .line 355
    invoke-virtual {v2, v5}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_f0

    .line 358
    :cond_f8
    sget-object v9, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v9, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v9, p4

    if-ne v8, v9, :cond_104

    move v8, v5

    .line 363
    :cond_104
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_29

    .line 366
    :cond_10b
    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static compressT6([BII)[B
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    move/from16 v0, p1

    const-string v1, "I/O error"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 483
    :try_start_7
    new-instance v5, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object/from16 v7, p0

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_f4

    .line 484
    :try_start_13
    new-instance v4, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    .line 485
    new-array v6, v0, [I

    .line 486
    new-array v7, v0, [I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_f1

    move/from16 v8, p2

    move v9, v2

    :goto_1f
    if-ge v9, v8, :cond_d4

    move v10, v2

    :goto_22
    if-ge v10, v0, :cond_36

    .line 490
    :try_start_24
    invoke-virtual {v5, v3}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->readBits(I)I

    move-result v11

    aput v11, v7, v10
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2a} :catch_2d
    .catchall {:try_start_24 .. :try_end_2a} :catchall_f1

    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :catch_2d
    move-exception v0

    .line 492
    :try_start_2e
    new-instance v4, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v6, "Error reading image to compress"

    invoke-direct {v4, v6, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 497
    :cond_36
    invoke-static {v7, v2, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    .line 498
    invoke-static {v6, v2, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v11

    add-int/lit8 v12, v11, 0x1

    .line 499
    invoke-static {v6, v3, v12}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v12

    move v13, v2

    move v14, v13

    :goto_46
    if-ge v13, v0, :cond_c8

    if-ge v12, v10, :cond_51

    .line 502
    sget-object v10, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v10, v4}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    :goto_4f
    move v13, v12

    goto :goto_9b

    :cond_51
    sub-int v11, v10, v11

    const/4 v12, -0x3

    if-gt v12, v11, :cond_83

    const/4 v15, 0x3

    if-gt v11, v15, :cond_83

    if-ne v11, v12, :cond_5e

    .line 509
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_7c

    :cond_5e
    const/4 v12, -0x2

    if-ne v11, v12, :cond_64

    .line 511
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_7c

    :cond_64
    const/4 v12, -0x1

    if-ne v11, v12, :cond_6a

    .line 513
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_7c

    :cond_6a
    if-nez v11, :cond_6f

    .line 515
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_7c

    :cond_6f
    if-ne v11, v3, :cond_74

    .line 517
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_7c

    :cond_74
    const/4 v12, 0x2

    if-ne v11, v12, :cond_7a

    .line 519
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_7c

    .line 521
    :cond_7a
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 523
    :goto_7c
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    rsub-int/lit8 v14, v14, 0x1

    move v13, v10

    goto :goto_9b

    :cond_83
    rsub-int/lit8 v11, v14, 0x1

    add-int/lit8 v12, v10, 0x1

    .line 527
    invoke-static {v7, v11, v12}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v12

    sub-int v13, v10, v13

    sub-int v10, v12, v10

    .line 530
    sget-object v15, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v15, v4}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 531
    invoke-static {v4, v13, v14}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    .line 532
    invoke-static {v4, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    goto :goto_4f

    .line 536
    :goto_9b
    invoke-static {v6, v13}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->changingElementAt([II)I

    move-result v10

    add-int/lit8 v11, v13, 0x1

    .line 537
    invoke-static {v7, v14, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v12

    if-ne v14, v10, :cond_ad

    .line 539
    invoke-static {v6, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    :goto_ab
    move v11, v10

    goto :goto_b9

    .line 541
    :cond_ad
    invoke-static {v6, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v11

    rsub-int/lit8 v10, v10, 0x1

    add-int/2addr v11, v3

    .line 542
    invoke-static {v6, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    goto :goto_ab

    :goto_b9
    rsub-int/lit8 v10, v14, 0x1

    add-int/lit8 v15, v11, 0x1

    .line 544
    invoke-static {v6, v10, v15}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v16

    goto/16 :goto_46

    .line 549
    :cond_c8
    invoke-virtual {v5}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v16, v7

    move-object v7, v6

    move-object/from16 v6, v16

    goto/16 :goto_1f

    .line 552
    :cond_d4
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v4}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 553
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v4}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 554
    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_e2
    .catchall {:try_start_2e .. :try_end_e2} :catchall_f1

    :try_start_e2
    new-array v4, v3, [Ljava/io/Closeable;

    aput-object v5, v4, v2

    .line 559
    invoke-static {v3, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e9} :catch_ea

    return-object v0

    :catch_ea
    move-exception v0

    .line 561
    new-instance v2, Lorg/apache/commons/imaging/ImageWriteException;

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_f1
    move-exception v0

    move-object v4, v5

    goto :goto_f5

    :catchall_f4
    move-exception v0

    :goto_f5
    :try_start_f5
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v2

    .line 559
    invoke-static {v2, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_fc} :catch_fd

    .line 561
    throw v0

    :catch_fd
    move-exception v0

    new-instance v2, Lorg/apache/commons/imaging/ImageWriteException;

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static decompressModifiedHuffman([BII)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const-string v0, "I/O error"

    .line 141
    new-instance v1, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 146
    :try_start_f
    new-instance v4, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_69

    move v3, v2

    :goto_15
    if-ge v3, p2, :cond_53

    move v5, v2

    move v6, v5

    :goto_19
    if-ge v5, p1, :cond_2c

    .line 151
    :try_start_1b
    invoke-static {v1, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v7

    move v8, v2

    :goto_20
    if-ge v8, v7, :cond_28

    .line 153
    invoke-virtual {v4, v6}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_28
    rsub-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v7

    goto :goto_19

    :cond_2c
    if-ne v5, p1, :cond_35

    .line 160
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    .line 161
    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    goto :goto_37

    :cond_35
    if-gt v5, p1, :cond_3a

    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 163
    :cond_3a
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecoverable row length error in image row "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_53
    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_57
    .catchall {:try_start_1b .. :try_end_57} :catchall_66

    :try_start_57
    new-array p2, p0, [Ljava/io/Closeable;

    aput-object v4, p2, v2

    .line 171
    invoke-static {p0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5e} :catch_5f

    return-object p1

    :catch_5f
    move-exception p0

    .line 173
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_66
    move-exception p1

    move-object v3, v4

    goto :goto_6a

    :catchall_69
    move-exception p1

    :goto_6a
    :try_start_6a
    new-array p0, p0, [Ljava/io/Closeable;

    aput-object v3, p0, v2

    .line 171
    invoke-static {v2, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_71} :catch_72

    .line 173
    throw p1

    :catch_72
    move-exception p0

    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decompressT4_1D([BIIZ)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const-string v0, "I/O error"

    .line 220
    new-instance v1, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 224
    :try_start_f
    new-instance v4, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_85

    move v3, v2

    :goto_15
    if-ge v3, p2, :cond_6f

    .line 228
    :try_start_17
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v5, v1}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 229
    invoke-static {v5, p3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->isEOL(Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;Z)Z

    move-result v5

    if-eqz v5, :cond_5e

    move v5, v2

    move v6, v5

    :goto_27
    if-ge v5, p1, :cond_3a

    .line 234
    invoke-static {v1, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v7

    move v8, v2

    :goto_2e
    if-ge v8, v7, :cond_36

    .line 236
    invoke-virtual {v4, v6}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V
    :try_end_33
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_17 .. :try_end_33} :catch_66
    .catchall {:try_start_17 .. :try_end_33} :catchall_82

    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_36
    rsub-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v7

    goto :goto_27

    :cond_3a
    if-ne v5, p1, :cond_40

    .line 246
    :try_start_3c
    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    goto :goto_42

    :cond_40
    if-gt v5, p1, :cond_45

    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 248
    :cond_45
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecoverable row length error in image row "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5e
    .catchall {:try_start_3c .. :try_end_5e} :catchall_82

    .line 230
    :cond_5e
    :try_start_5e
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Expected EOL not found"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_66
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_5e .. :try_end_66} :catch_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_82

    :catch_66
    move-exception p1

    .line 242
    :try_start_67
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    const-string p3, "Decompression error"

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 251
    :cond_6f
    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_82

    :try_start_73
    new-array p2, p0, [Ljava/io/Closeable;

    aput-object v4, p2, v2

    .line 256
    invoke-static {p0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7a} :catch_7b

    return-object p1

    :catch_7b
    move-exception p0

    .line 258
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_82
    move-exception p1

    move-object v3, v4

    goto :goto_86

    :catchall_85
    move-exception p1

    :goto_86
    :try_start_86
    new-array p0, p0, [Ljava/io/Closeable;

    aput-object v3, p0, v2

    .line 256
    invoke-static {v2, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8d} :catch_8e

    .line 258
    throw p1

    :catch_8e
    move-exception p0

    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decompressT4_2D([BIIZ)[B
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const-string v0, "Decompression error"

    .line 383
    new-instance v1, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    .line 384
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    .line 385
    new-array v2, p1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, p2, :cond_127

    .line 389
    :try_start_17
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v5, v1}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 390
    invoke-static {v5, p3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->isEOL(Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;Z)Z

    move-result v5

    if-eqz v5, :cond_111

    const/4 v5, 0x1

    .line 393
    invoke-virtual {v1, v5}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->readBits(I)I

    move-result v6

    if-nez v6, :cond_d3

    .line 398
    invoke-static {v2, v3, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    .line 399
    invoke-static {v2, v5, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v7

    move v8, v3

    move v9, v8

    move v10, v9

    :goto_39
    if-ge v8, p1, :cond_ec

    .line 403
    sget-object v9, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v9, v1}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 404
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v11, :cond_4c

    .line 405
    invoke-static {p0, v2, v8, v7, v10}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    :goto_4a
    move v9, v7

    goto :goto_94

    .line 407
    :cond_4c
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_64

    .line 408
    invoke-static {v1, v10}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v6

    add-int/2addr v6, v8

    .line 410
    invoke-static {p0, v2, v8, v6, v10}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    rsub-int/lit8 v7, v10, 0x1

    .line 411
    invoke-static {v1, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v8

    add-int/2addr v8, v6

    .line 413
    invoke-static {p0, v2, v6, v8, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    move v9, v8

    goto :goto_94

    .line 417
    :cond_64
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_6a

    move v7, v3

    goto :goto_8d

    .line 419
    :cond_6a
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_70

    const/4 v7, -0x1

    goto :goto_8d

    .line 421
    :cond_70
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_76

    const/4 v7, -0x2

    goto :goto_8d

    .line 423
    :cond_76
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_7c

    const/4 v7, -0x3

    goto :goto_8d

    .line 425
    :cond_7c
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_82

    move v7, v5

    goto :goto_8d

    .line 427
    :cond_82
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_88

    const/4 v7, 0x2

    goto :goto_8d

    .line 429
    :cond_88
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_b8

    const/4 v7, 0x3

    :goto_8d
    add-int/2addr v7, v6

    .line 435
    invoke-static {p0, v2, v8, v7, v10}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    rsub-int/lit8 v10, v10, 0x1

    goto :goto_4a

    .line 439
    :goto_94
    invoke-static {v2, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->changingElementAt([II)I

    move-result v6

    if-ne v10, v6, :cond_a1

    add-int/lit8 v7, v9, 0x1

    .line 441
    invoke-static {v2, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v6

    goto :goto_ae

    :cond_a1
    add-int/lit8 v7, v9, 0x1

    .line 443
    invoke-static {v2, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v7

    rsub-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v5

    .line 444
    invoke-static {v2, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v6

    :goto_ae
    rsub-int/lit8 v7, v10, 0x1

    add-int/lit8 v8, v6, 0x1

    .line 446
    invoke-static {v2, v7, v8}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v7

    move v8, v9

    goto :goto_39

    .line 432
    :cond_b8
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid/unknown T.4 control code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v9, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d3
    move v5, v3

    move v9, v5

    :goto_d5
    if-ge v9, p1, :cond_ec

    .line 453
    invoke-static {v1, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v6

    move v7, v3

    :goto_dc
    if-ge v7, v6, :cond_e8

    .line 455
    invoke-virtual {p0, v5}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int v8, v9, v7

    .line 456
    aput v5, v2, v8
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_e5} :catch_120
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_17 .. :try_end_e5} :catch_119

    add-int/lit8 v7, v7, 0x1

    goto :goto_dc

    :cond_e8
    rsub-int/lit8 v5, v5, 0x1

    add-int/2addr v9, v6

    goto :goto_d5

    :cond_ec
    if-ne v9, p1, :cond_f2

    .line 469
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    goto :goto_f4

    :cond_f2
    if-gt v9, p1, :cond_f8

    :goto_f4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15

    .line 471
    :cond_f8
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecoverable row length error in image row "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 391
    :cond_111
    :try_start_111
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Expected EOL not found"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_119} :catch_120
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_111 .. :try_end_119} :catch_119

    :catch_119
    move-exception p0

    .line 465
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_120
    move-exception p0

    .line 463
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 475
    :cond_127
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static decompressT6([BII)[B
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 579
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    .line 580
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    .line 581
    new-array v1, p1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, p2, :cond_eb

    .line 587
    :try_start_15
    invoke-static {v1, v2, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    .line 588
    invoke-static {v1, v6, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v5

    move v7, v2

    move v8, v7

    move v9, v8

    :goto_23
    if-ge v7, p1, :cond_bd

    .line 592
    sget-object v8, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 593
    sget-object v10, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v10, :cond_36

    .line 594
    invoke-static {p0, v1, v7, v5, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    :goto_34
    move v8, v5

    goto :goto_7e

    .line 596
    :cond_36
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_4e

    .line 597
    invoke-static {v0, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v4

    add-int/2addr v4, v7

    .line 599
    invoke-static {p0, v1, v7, v4, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    rsub-int/lit8 v5, v9, 0x1

    .line 600
    invoke-static {v0, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v7

    add-int/2addr v7, v4

    .line 602
    invoke-static {p0, v1, v4, v7, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    move v8, v7

    goto :goto_7e

    .line 606
    :cond_4e
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_54

    move v5, v2

    goto :goto_77

    .line 608
    :cond_54
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_5a

    const/4 v5, -0x1

    goto :goto_77

    .line 610
    :cond_5a
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_60

    const/4 v5, -0x2

    goto :goto_77

    .line 612
    :cond_60
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_66

    const/4 v5, -0x3

    goto :goto_77

    .line 614
    :cond_66
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_6c

    move v5, v6

    goto :goto_77

    .line 616
    :cond_6c
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_72

    const/4 v5, 0x2

    goto :goto_77

    .line 618
    :cond_72
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_a2

    const/4 v5, 0x3

    :goto_77
    add-int/2addr v5, v4

    .line 624
    invoke-static {p0, v1, v7, v5, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    rsub-int/lit8 v9, v9, 0x1

    goto :goto_34

    .line 628
    :goto_7e
    invoke-static {v1, v8}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->changingElementAt([II)I

    move-result v4

    if-ne v9, v4, :cond_8b

    add-int/lit8 v5, v8, 0x1

    .line 630
    invoke-static {v1, v4, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v4

    goto :goto_98

    :cond_8b
    add-int/lit8 v5, v8, 0x1

    .line 632
    invoke-static {v1, v4, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v5

    rsub-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v6

    .line 633
    invoke-static {v1, v4, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v4

    :goto_98
    rsub-int/lit8 v5, v9, 0x1

    add-int/lit8 v7, v4, 0x1

    .line 635
    invoke-static {v1, v5, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v5

    move v7, v8

    goto :goto_23

    .line 621
    :cond_a2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid/unknown T.6 control code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v8, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_bd
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_15 .. :try_end_bd} :catch_e2

    :cond_bd
    if-ne v8, p1, :cond_c3

    .line 643
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    goto :goto_c5

    :cond_c3
    if-gt v8, p1, :cond_c9

    :goto_c5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    .line 645
    :cond_c9
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecoverable row length error in image row "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_e2
    move-exception p0

    .line 639
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Decompression error"

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 649
    :cond_eb
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_a

    .line 750
    aput p4, p1, p2

    .line 751
    invoke-virtual {p0, p4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_a
    return-void
.end method

.method private static isEOL(Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;Z)Z
    .registers 4

    .line 653
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 657
    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL13:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_27

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL14:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_27

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL15:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_27

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_27

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL17:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_27

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL18:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_27

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL19:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne p0, p1, :cond_26

    goto :goto_27

    :cond_26
    move v1, v0

    :cond_27
    :goto_27
    return v1

    :cond_28
    return v0
.end method

.method private static lowerBound([Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;I)Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;
    .registers 7

    .line 695
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :cond_4
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 698
    aget-object v3, p0, v2

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, p1, :cond_24

    add-int/lit8 v3, v2, 0x1

    array-length v4, p0

    if-ge v3, v4, :cond_21

    aget-object v3, p0, v3

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge p1, v3, :cond_24

    .line 700
    :cond_21
    aget-object p0, p0, v2

    return-object p0

    .line 701
    :cond_24
    aget-object v3, p0, v2

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_32

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_35

    :cond_32
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_35
    if-lt v1, v0, :cond_4

    .line 708
    aget-object p0, p0, v1

    return-object p0
.end method

.method private static nextChangingElement([III)I
    .registers 4

    .line 740
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_a

    aget v0, p0, p2

    if-ne v0, p1, :cond_a

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 744
    :cond_a
    array-length p1, p0

    if-ge p2, p1, :cond_e

    goto :goto_f

    :cond_e
    array-length p2, p0

    :goto_f
    return p2
.end method

.method private static readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_1
    if-nez p1, :cond_c

    .line 718
    :try_start_3
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_14

    .line 720
    :cond_c
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 722
    :goto_14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    .line 723
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1d
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_3 .. :try_end_1d} :catch_22

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_1

    return v0

    :catch_22
    move-exception p0

    .line 726
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Decompression error"

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V
    .registers 5

    if-nez p2, :cond_7

    .line 672
    sget-object p2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->WHITE_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 673
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->WHITE_TERMINATING_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_b

    .line 675
    :cond_7
    sget-object p2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->BLACK_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 676
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->BLACK_TERMINATING_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    :goto_b
    const/16 v1, 0x700

    if-lt p1, v1, :cond_20

    .line 679
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->ADDITIONAL_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-static {v1, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->lowerBound([Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;I)Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-result-object v1

    .line 681
    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 682
    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_b

    :cond_20
    :goto_20
    const/16 v1, 0x40

    if-lt p1, v1, :cond_33

    .line 685
    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->lowerBound([Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;I)Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-result-object v1

    .line 686
    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 687
    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_20

    .line 689
    :cond_33
    aget-object p1, v0, p1

    .line 690
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    return-void
.end method
