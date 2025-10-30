.class public final enum Lcom/google/android/apps/photos/api/IconQuery$Type;
.super Ljava/lang/Enum;
.source "IconQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/photos/api/IconQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/apps/photos/api/IconQuery$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/photos/api/IconQuery$Type;

.field public static final enum BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

.field public static final enum DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

.field public static final enum EDITOR:Lcom/google/android/apps/photos/api/IconQuery$Type;

.field public static final enum INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;

.field public static final enum SEARCH:Lcom/google/android/apps/photos/api/IconQuery$Type;


# instance fields
.field private final dimensionResourceId:I

.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 30
    new-instance v0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    const-string v1, "BADGE"

    const/4 v2, 0x0

    const-string v3, "badge"

    const v4, 0x7f070069

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/photos/api/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

    .line 32
    new-instance v1, Lcom/google/android/apps/photos/api/IconQuery$Type;

    const-string v3, "INTERACT"

    const/4 v4, 0x1

    const-string v5, "interact"

    const v6, 0x7f0700f2

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/google/android/apps/photos/api/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/google/android/apps/photos/api/IconQuery$Type;->INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;

    .line 34
    new-instance v3, Lcom/google/android/apps/photos/api/IconQuery$Type;

    const-string v5, "DIALOG"

    const/4 v7, 0x2

    const-string v8, "dialog"

    invoke-direct {v3, v5, v7, v8, v6}, Lcom/google/android/apps/photos/api/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    .line 35
    new-instance v5, Lcom/google/android/apps/photos/api/IconQuery$Type;

    const-string v6, "SEARCH"

    const/4 v8, 0x3

    const-string v9, "search"

    const v10, 0x7f0701a0

    invoke-direct {v5, v6, v8, v9, v10}, Lcom/google/android/apps/photos/api/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/google/android/apps/photos/api/IconQuery$Type;->SEARCH:Lcom/google/android/apps/photos/api/IconQuery$Type;

    .line 37
    new-instance v6, Lcom/google/android/apps/photos/api/IconQuery$Type;

    const-string v9, "EDITOR"

    const/4 v10, 0x4

    const-string v11, "editor"

    const v12, 0x7f070099

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/google/android/apps/photos/api/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/google/android/apps/photos/api/IconQuery$Type;->EDITOR:Lcom/google/android/apps/photos/api/IconQuery$Type;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/apps/photos/api/IconQuery$Type;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v7

    aput-object v5, v9, v8

    aput-object v6, v9, v10

    .line 28
    sput-object v9, Lcom/google/android/apps/photos/api/IconQuery$Type;->$VALUES:[Lcom/google/android/apps/photos/api/IconQuery$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/photos/api/IconQuery$Type;->path:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/google/android/apps/photos/api/IconQuery$Type;->dimensionResourceId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/photos/api/IconQuery$Type;
    .registers 2

    .line 28
    const-class v0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/photos/api/IconQuery$Type;
    .registers 1

    .line 28
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->$VALUES:[Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-virtual {v0}, [Lcom/google/android/apps/photos/api/IconQuery$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/photos/api/IconQuery$Type;

    return-object v0
.end method


# virtual methods
.method public getDimensionResourceId()I
    .registers 1

    .line 52
    iget p0, p0, Lcom/google/android/apps/photos/api/IconQuery$Type;->dimensionResourceId:I

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/google/android/apps/photos/api/IconQuery$Type;->path:Ljava/lang/String;

    return-object p0
.end method
