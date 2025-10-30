.class public final Lcom/qualcomm/qti/snpe/internal/TensorUtil;
.super Ljava/lang/Object;
.source "TensorUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertShape(Ljava/lang/String;[I[I)V
    .registers 8

    .line 36
    array-length v0, p1

    array-length v1, p2

    const-string v2, ", Actual: "

    const-string v3, "Tensor "

    if-ne v0, v1, :cond_53

    const/4 v0, 0x0

    .line 41
    :goto_9
    array-length v1, p1

    if-ge v0, v1, :cond_52

    .line 42
    aget v1, p1, v0

    aget v4, p2, v0

    if-ne v1, v4, :cond_15

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 43
    :cond_15
    new-instance v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " has unexpected "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "dimension ("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ")! Expected: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget p1, p2, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    return-void

    .line 37
    :cond_53
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " has unexpected shape! "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "Expected: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static position([I[I)I
    .registers 6

    .line 21
    array-length v0, p0

    new-array v0, v0, [I

    .line 23
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_6
    if-ltz v1, :cond_10

    .line 24
    aput v2, v0, v1

    .line 25
    aget v3, p0, v1

    mul-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_10
    const/4 p0, 0x0

    move v1, p0

    .line 29
    :goto_12
    array-length v2, p1

    if-ge p0, v2, :cond_1e

    .line 30
    aget v2, p1, p0

    aget v3, v0, p0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_12

    :cond_1e
    return v1
.end method

.method public static sizeOf([I)I
    .registers 5

    .line 14
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_b

    aget v3, p0, v2

    mul-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    return v1
.end method
