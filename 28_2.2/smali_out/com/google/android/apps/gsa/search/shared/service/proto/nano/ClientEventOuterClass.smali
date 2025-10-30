.class public abstract Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventOuterClass;
.super Ljava/lang/Object;
.source "ClientEventOuterClass.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkClientEventIdOrThrow(I)I
    .registers 4
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventId;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p0, :cond_6

    const/4 v0, 0x7

    if-gt p0, v0, :cond_6

    return p0

    :cond_6
    const/16 v0, 0x9

    if-lt p0, v0, :cond_f

    const/16 v0, 0xc

    if-gt p0, v0, :cond_f

    return p0

    :cond_f
    const/16 v0, 0xe

    if-lt p0, v0, :cond_18

    const/16 v0, 0x12

    if-gt p0, v0, :cond_18

    return p0

    :cond_18
    const/16 v0, 0x17

    if-lt p0, v0, :cond_21

    const/16 v0, 0x19

    if-gt p0, v0, :cond_21

    return p0

    :cond_21
    const/16 v0, 0x1b

    if-lt p0, v0, :cond_28

    if-gt p0, v0, :cond_28

    return p0

    :cond_28
    const/16 v0, 0x1d

    if-lt p0, v0, :cond_2f

    if-gt p0, v0, :cond_2f

    return p0

    :cond_2f
    const/16 v0, 0x1f

    if-lt p0, v0, :cond_38

    const/16 v0, 0x31

    if-gt p0, v0, :cond_38

    return p0

    :cond_38
    const/16 v0, 0x33

    if-lt p0, v0, :cond_41

    const/16 v0, 0x37

    if-gt p0, v0, :cond_41

    return p0

    :cond_41
    const/16 v0, 0x39

    if-lt p0, v0, :cond_4a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_4a

    return p0

    :cond_4a
    const/16 v0, 0x5c

    if-lt p0, v0, :cond_53

    const/16 v0, 0x64

    if-gt p0, v0, :cond_53

    return p0

    :cond_53
    const/16 v0, 0x67

    if-lt p0, v0, :cond_5a

    if-gt p0, v0, :cond_5a

    return p0

    :cond_5a
    const/16 v0, 0x69

    if-lt p0, v0, :cond_63

    const/16 v0, 0x6c

    if-gt p0, v0, :cond_63

    return p0

    :cond_63
    const/16 v0, 0x6e

    if-lt p0, v0, :cond_6c

    const/16 v0, 0x9e

    if-gt p0, v0, :cond_6c

    return p0

    :cond_6c
    const/16 v0, 0xa0

    if-lt p0, v0, :cond_75

    const/16 v0, 0xa3

    if-gt p0, v0, :cond_75

    return p0

    :cond_75
    const/16 v0, 0xa6

    if-lt p0, v0, :cond_7e

    const/16 v0, 0xab

    if-gt p0, v0, :cond_7e

    return p0

    :cond_7e
    const/16 v0, 0xad

    if-lt p0, v0, :cond_87

    const/16 v0, 0xaf

    if-gt p0, v0, :cond_87

    return p0

    :cond_87
    const/16 v0, 0xb2

    if-lt p0, v0, :cond_90

    const/16 v0, 0xc0

    if-gt p0, v0, :cond_90

    return p0

    :cond_90
    const/16 v0, 0xc2

    if-lt p0, v0, :cond_99

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_99

    return p0

    :cond_99
    const/16 v0, 0xcb

    if-lt p0, v0, :cond_a2

    const/16 v0, 0xd8

    if-gt p0, v0, :cond_a2

    return p0

    :cond_a2
    const/16 v0, 0xda

    if-lt p0, v0, :cond_ab

    const/16 v0, 0xe4

    if-gt p0, v0, :cond_ab

    return p0

    :cond_ab
    const/16 v0, 0xe6

    if-lt p0, v0, :cond_b4

    const/16 v0, 0xe9

    if-gt p0, v0, :cond_b4

    return p0

    :cond_b4
    const/16 v0, 0xeb

    if-lt p0, v0, :cond_bd

    const/16 v0, 0xfb

    if-gt p0, v0, :cond_bd

    return p0

    :cond_bd
    const/16 v0, 0xfd

    if-lt p0, v0, :cond_c6

    const/16 v0, 0x109

    if-gt p0, v0, :cond_c6

    return p0

    :cond_c6
    const/16 v0, 0x10b

    if-lt p0, v0, :cond_cf

    const/16 v0, 0x135

    if-gt p0, v0, :cond_cf

    return p0

    :cond_cf
    const/16 v0, 0x137

    if-lt p0, v0, :cond_d8

    const/16 v0, 0x15c

    if-gt p0, v0, :cond_d8

    return p0

    .line 88
    :cond_d8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum ClientEventId"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkClientEventIdOrThrow([I)[I
    .registers 4
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventId;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 96
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget v2, p0, v1

    .line 97
    invoke-static {v2}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ClientEventOuterClass;->checkClientEventIdOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return-object p0
.end method
