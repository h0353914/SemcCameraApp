.class public abstract Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventOuterClass;
.super Ljava/lang/Object;
.source "ServiceEventOuterClass.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkServiceEventIdOrThrow(I)I
    .registers 4
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventId;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    const/16 v0, 0xa

    if-gt p0, v0, :cond_8

    return p0

    :cond_8
    const/16 v0, 0xc

    if-lt p0, v0, :cond_11

    const/16 v0, 0x12

    if-gt p0, v0, :cond_11

    return p0

    :cond_11
    const/16 v0, 0x14

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x16

    if-gt p0, v0, :cond_1a

    return p0

    :cond_1a
    const/16 v0, 0x18

    if-lt p0, v0, :cond_23

    const/16 v0, 0x1b

    if-gt p0, v0, :cond_23

    return p0

    :cond_23
    const/16 v0, 0x1d

    if-lt p0, v0, :cond_2c

    const/16 v0, 0x27

    if-gt p0, v0, :cond_2c

    return p0

    :cond_2c
    const/16 v0, 0x2a

    if-lt p0, v0, :cond_35

    const/16 v0, 0x33

    if-gt p0, v0, :cond_35

    return p0

    :cond_35
    const/16 v0, 0x38

    if-lt p0, v0, :cond_3e

    const/16 v0, 0x55

    if-gt p0, v0, :cond_3e

    return p0

    :cond_3e
    const/16 v0, 0x57

    if-lt p0, v0, :cond_47

    const/16 v0, 0x59

    if-gt p0, v0, :cond_47

    return p0

    :cond_47
    const/16 v0, 0x5b

    if-lt p0, v0, :cond_4e

    if-gt p0, v0, :cond_4e

    return p0

    :cond_4e
    const/16 v0, 0x5e

    if-lt p0, v0, :cond_57

    const/16 v0, 0x6c

    if-gt p0, v0, :cond_57

    return p0

    :cond_57
    const/16 v0, 0x6e

    if-lt p0, v0, :cond_60

    const/16 v0, 0x6f

    if-gt p0, v0, :cond_60

    return p0

    :cond_60
    const/16 v0, 0x71

    if-lt p0, v0, :cond_67

    if-gt p0, v0, :cond_67

    return p0

    :cond_67
    const/16 v0, 0x73

    if-lt p0, v0, :cond_70

    const/16 v0, 0x7b

    if-gt p0, v0, :cond_70

    return p0

    :cond_70
    const/16 v0, 0x7e

    if-lt p0, v0, :cond_79

    const/16 v0, 0x92

    if-gt p0, v0, :cond_79

    return p0

    :cond_79
    const/16 v0, 0x94

    if-lt p0, v0, :cond_82

    const/16 v0, 0x9e

    if-gt p0, v0, :cond_82

    return p0

    :cond_82
    const/16 v0, 0xa0

    if-lt p0, v0, :cond_89

    if-gt p0, v0, :cond_89

    return p0

    :cond_89
    const/16 v0, 0xa2

    if-lt p0, v0, :cond_92

    const/16 v0, 0xa8

    if-gt p0, v0, :cond_92

    return p0

    :cond_92
    const/16 v0, 0xaa

    if-lt p0, v0, :cond_9b

    const/16 v0, 0xac

    if-gt p0, v0, :cond_9b

    return p0

    :cond_9b
    const/16 v0, 0xae

    if-lt p0, v0, :cond_a2

    if-gt p0, v0, :cond_a2

    return p0

    :cond_a2
    const/16 v0, 0xb0

    if-lt p0, v0, :cond_a9

    if-gt p0, v0, :cond_a9

    return p0

    :cond_a9
    const/16 v0, 0xb2

    if-lt p0, v0, :cond_b2

    const/16 v0, 0xbd

    if-gt p0, v0, :cond_b2

    return p0

    :cond_b2
    const/16 v0, 0xbf

    if-lt p0, v0, :cond_bb

    const/16 v0, 0xcf

    if-gt p0, v0, :cond_bb

    return p0

    :cond_bb
    const/16 v0, 0xd2

    if-lt p0, v0, :cond_c4

    const/16 v0, 0xf0

    if-gt p0, v0, :cond_c4

    return p0

    .line 82
    :cond_c4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum ServiceEventId"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkServiceEventIdOrThrow([I)[I
    .registers 4
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventId;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 90
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget v2, p0, v1

    .line 91
    invoke-static {v2}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventOuterClass;->checkServiceEventIdOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return-object p0
.end method
