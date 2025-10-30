.class public final enum Ldm;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ldm;

.field public static final enum b:Ldm;

.field public static final enum c:Ldm;

.field public static final enum d:Ldm;

.field public static final enum e:Ldm;

.field public static final enum f:Ldm;

.field public static final enum g:Ldm;

.field public static final enum h:Ldm;

.field public static final enum i:Ldm;

.field public static final enum j:Ldm;

.field private static final synthetic l:[Ldm;


# instance fields
.field private final k:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Ldm;

    const-class v1, Ljava/lang/Void;

    const-string v2, "VOID"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v0, v2, v3, v1}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ldm;->a:Ldm;

    new-instance v1, Ldm;

    .line 2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    const-string v4, "INT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Ldm;->b:Ldm;

    new-instance v2, Ldm;

    .line 3
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    const-string v6, "LONG"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Ldm;->c:Ldm;

    new-instance v4, Ldm;

    .line 4
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Float;

    const-string v8, "FLOAT"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Ldm;->d:Ldm;

    new-instance v6, Ldm;

    .line 5
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Double;

    const-string v10, "DOUBLE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Ldm;->e:Ldm;

    new-instance v8, Ldm;

    .line 6
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/Boolean;

    const-string v12, "BOOLEAN"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Ldm;->f:Ldm;

    new-instance v10, Ldm;

    const-class v12, Ljava/lang/String;

    const-string v14, "STRING"

    const/4 v15, 0x6

    .line 7
    invoke-direct {v10, v14, v15, v12}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Ldm;->g:Ldm;

    new-instance v12, Ldm;

    .line 8
    sget-object v14, Lck;->b:Lck;

    const-class v14, Lck;

    const-string v15, "BYTE_STRING"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v12, Ldm;->h:Ldm;

    new-instance v14, Ldm;

    .line 9
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v15, Ljava/lang/Integer;

    const-string v13, "ENUM"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v14, Ldm;->i:Ldm;

    new-instance v13, Ldm;

    const-class v15, Ljava/lang/Object;

    const-string v11, "MESSAGE"

    const/16 v9, 0x9

    .line 10
    invoke-direct {v13, v11, v9, v15}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v13, Ldm;->j:Ldm;

    const/16 v11, 0xa

    new-array v11, v11, [Ldm;

    aput-object v0, v11, v3

    aput-object v1, v11, v5

    aput-object v2, v11, v7

    const/4 v0, 0x3

    aput-object v4, v11, v0

    const/4 v0, 0x4

    aput-object v6, v11, v0

    const/4 v0, 0x5

    aput-object v8, v11, v0

    const/4 v0, 0x6

    aput-object v10, v11, v0

    const/4 v0, 0x7

    aput-object v12, v11, v0

    const/16 v0, 0x8

    aput-object v14, v11, v0

    aput-object v13, v11, v9

    sput-object v11, Ldm;->l:[Ldm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ldm;->k:Ljava/lang/Class;

    return-void
.end method

.method public static values()[Ldm;
    .registers 1

    sget-object v0, Ldm;->l:[Ldm;

    .line 12
    invoke-virtual {v0}, [Ldm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldm;

    return-object v0
.end method
