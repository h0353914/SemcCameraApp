.class public final enum Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;
.super Ljava/lang/Enum;
.source "UserSettingSelectability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

.field public static final enum FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

.field public static final enum FORCE_CHANGED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

.field public static final enum INVALID:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

.field public static final enum SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

.field public static final TAG:Ljava/lang/String; = "UserSettingSelectability"

.field public static final enum UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;


# instance fields
.field private final mIsUpdatable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 12
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    .line 14
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    const-string v3, "FIXED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    .line 17
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    const-string v5, "UNAVAILABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    .line 19
    new-instance v5, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    const-string v7, "SELECTABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    .line 25
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    const-string v9, "FORCE_CHANGED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FORCE_CHANGED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 10
    sput-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->mIsUpdatable:Z

    return-void
.end method

.method public static getSelectability(I)Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;
    .registers 2

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    .line 59
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-object p0

    .line 55
    :cond_8
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-object p0

    .line 51
    :cond_b
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;
    .registers 2

    .line 10
    const-class v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;
    .registers 1

    .line 10
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-object v0
.end method


# virtual methods
.method public isUpdatable()Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->mIsUpdatable:Z

    return p0
.end method
