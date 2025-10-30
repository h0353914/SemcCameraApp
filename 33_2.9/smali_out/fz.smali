.class public final enum Lfz;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lfz;

.field public static final enum b:Lfz;

.field public static final enum c:Lfz;

.field public static final enum d:Lfz;

.field public static final enum e:Lfz;

.field public static final enum f:Lfz;

.field public static final enum g:Lfz;

.field public static final enum h:Lfz;

.field public static final enum i:Lfz;

.field private static final synthetic j:[Lfz;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lfz;

    const-string v1, "INT"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->a:Lfz;

    new-instance v1, Lfz;

    const-string v3, "LONG"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfz;->b:Lfz;

    new-instance v3, Lfz;

    const-string v5, "FLOAT"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfz;->c:Lfz;

    new-instance v5, Lfz;

    const-string v7, "DOUBLE"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lfz;->d:Lfz;

    new-instance v7, Lfz;

    const-string v9, "BOOLEAN"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lfz;->e:Lfz;

    new-instance v9, Lfz;

    const-string v11, "STRING"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lfz;->f:Lfz;

    new-instance v11, Lfz;

    .line 7
    sget-object v13, Lck;->b:Lck;

    const-string v13, "BYTE_STRING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lfz;->g:Lfz;

    new-instance v13, Lfz;

    const-string v15, "ENUM"

    const/4 v14, 0x7

    .line 8
    invoke-direct {v13, v15, v14}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lfz;->h:Lfz;

    new-instance v15, Lfz;

    const-string v14, "MESSAGE"

    const/16 v12, 0x8

    .line 9
    invoke-direct {v15, v14, v12}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lfz;->i:Lfz;

    const/16 v14, 0x9

    new-array v14, v14, [Lfz;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lfz;->j:[Lfz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lfz;
    .registers 1

    sget-object v0, Lfz;->j:[Lfz;

    .line 11
    invoke-virtual {v0}, [Lfz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfz;

    return-object v0
.end method
