.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
.super Ljava/lang/Enum;
.source "DestinationToSave.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field public static final enum EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field public static final enum INTERNAL_MASS_STORAGE:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field public static final enum MEMORY_CARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field public static final enum SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field public static final TAG:Ljava/lang/String; = "DestinationToSave"

.field private static sParameterTextId:I

.field private static sPrimaryStorage:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;


# instance fields
.field private final mCompatibleValue:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field private mIconId:I

.field private mIsEquipped:Z

.field private mTextId:I

.field private mType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 19
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const-string v1, "EMMC"

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v2, 0x0

    const v3, 0x7f080142

    const v4, 0x7f0e02cc

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const-string v9, "SDCARD"

    sget-object v13, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v10, 0x1

    const v11, 0x7f080143

    const v12, 0x7f0e02cd

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const-string v2, "INTERNAL_MASS_STORAGE"

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const/4 v3, 0x2

    const v4, 0x7f080142

    const v5, 0x7f0e02cc

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->INTERNAL_MASS_STORAGE:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const-string v9, "MEMORY_CARD"

    sget-object v13, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->MEMORY_CARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const/4 v0, 0x4

    .line 17
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->INTERNAL_MASS_STORAGE:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->MEMORY_CARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const/4 v3, 0x3

    aput-object v2, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const v0, 0x7f0e02cf

    .line 47
    sput v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->sParameterTextId:I

    .line 198
    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->sPrimaryStorage:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mIsEquipped:Z

    .line 65
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mIconId:I

    .line 66
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mTextId:I

    .line 67
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 68
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mCompatibleValue:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .registers 3

    const/4 v0, 0x2

    .line 189
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getPrimaryStorage()Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .registers 1

    .line 213
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->sPrimaryStorage:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    return-object v0
.end method

.method public static getValueFromType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 177
    :cond_4
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_3e

    aget-object v5, v1, v4

    .line 178
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v6

    if-ne p0, v6, :cond_3b

    .line 179
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValueFromType: type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", value : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3a
    return-object v5

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_3e
    return-object v0
.end method

.method private isEquipped()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mIsEquipped:Z

    return v0
.end method

.method public static final preload()V
    .registers 0

    return-void
.end method

.method public static setMountPoint(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 78
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2e

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMountPoint: type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 79
    :cond_2e
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move-result-object v1

    array-length v4, v1

    move v5, v2

    :goto_34
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    .line 81
    iget-object v7, v6, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mCompatibleValue:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-nez v7, :cond_61

    .line 82
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v7

    if-ne v0, v7, :cond_61

    .line 83
    iput-boolean v3, v6, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mIsEquipped:Z

    .line 84
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    new-array v0, v3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMountPoint: valid mount point: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_4

    :cond_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 92
    :cond_64
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->updatePrimaryStorage()V

    return-void
.end method

.method private static updatePrimaryStorage()V
    .registers 1

    .line 205
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->isEquipped()Z

    move-result v0

    if-nez v0, :cond_14

    .line 206
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->isEquipped()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 207
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->sPrimaryStorage:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    :cond_14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .registers 2

    .line 17
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .registers 1

    .line 17
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 102
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V

    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 110
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    .line 120
    sget v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->sParameterTextId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 145
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mTextId:I

    return v0
.end method

.method public getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
