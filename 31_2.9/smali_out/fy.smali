.class public final enum Lfy;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lfy;

.field public static final enum b:Lfy;

.field public static final enum c:Lfy;

.field public static final enum d:Lfy;

.field public static final enum e:Lfy;

.field public static final enum f:Lfy;

.field public static final enum g:Lfy;

.field public static final enum h:Lfy;

.field public static final enum i:Lfy;

.field public static final enum j:Lfy;

.field public static final enum k:Lfy;

.field public static final enum l:Lfy;

.field public static final enum m:Lfy;

.field public static final enum n:Lfy;

.field public static final enum o:Lfy;

.field public static final enum p:Lfy;

.field public static final enum q:Lfy;

.field public static final enum r:Lfy;

.field private static final synthetic u:[Lfy;


# instance fields
.field public final s:Lfz;

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lfy;

    const-string v1, "DOUBLE"

    .line 1
    sget-object v2, Lfz;->d:Lfz;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->a:Lfy;

    new-instance v0, Lfy;

    const-string v1, "FLOAT"

    sget-object v2, Lfz;->c:Lfz;

    const/4 v5, 0x5

    .line 2
    invoke-direct {v0, v1, v3, v2, v5}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->b:Lfy;

    new-instance v0, Lfy;

    const-string v1, "INT64"

    sget-object v2, Lfz;->b:Lfz;

    const/4 v6, 0x2

    .line 3
    invoke-direct {v0, v1, v6, v2, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->c:Lfy;

    new-instance v0, Lfy;

    const-string v1, "UINT64"

    sget-object v2, Lfz;->b:Lfz;

    const/4 v7, 0x3

    .line 4
    invoke-direct {v0, v1, v7, v2, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->d:Lfy;

    new-instance v0, Lfy;

    const-string v1, "INT32"

    sget-object v2, Lfz;->a:Lfz;

    const/4 v8, 0x4

    .line 5
    invoke-direct {v0, v1, v8, v2, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->e:Lfy;

    new-instance v0, Lfy;

    const-string v1, "FIXED64"

    sget-object v2, Lfz;->b:Lfz;

    .line 6
    invoke-direct {v0, v1, v5, v2, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->f:Lfy;

    new-instance v0, Lfy;

    const-string v1, "FIXED32"

    sget-object v2, Lfz;->a:Lfz;

    const/4 v9, 0x6

    .line 7
    invoke-direct {v0, v1, v9, v2, v5}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->g:Lfy;

    new-instance v0, Lfy;

    const-string v1, "BOOL"

    sget-object v2, Lfz;->e:Lfz;

    const/4 v10, 0x7

    .line 8
    invoke-direct {v0, v1, v10, v2, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->h:Lfy;

    new-instance v0, Lfy;

    const-string v1, "STRING"

    sget-object v2, Lfz;->f:Lfz;

    const/16 v11, 0x8

    .line 9
    invoke-direct {v0, v1, v11, v2, v6}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->i:Lfy;

    new-instance v0, Lfy;

    const-string v1, "GROUP"

    sget-object v2, Lfz;->i:Lfz;

    const/16 v12, 0x9

    .line 10
    invoke-direct {v0, v1, v12, v2, v7}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->j:Lfy;

    new-instance v0, Lfy;

    const-string v1, "MESSAGE"

    sget-object v2, Lfz;->i:Lfz;

    const/16 v13, 0xa

    .line 11
    invoke-direct {v0, v1, v13, v2, v6}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->k:Lfy;

    new-instance v0, Lfy;

    const-string v1, "BYTES"

    sget-object v2, Lfz;->g:Lfz;

    const/16 v14, 0xb

    .line 12
    invoke-direct {v0, v1, v14, v2, v6}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->l:Lfy;

    new-instance v0, Lfy;

    const-string v1, "UINT32"

    sget-object v2, Lfz;->a:Lfz;

    const/16 v15, 0xc

    .line 13
    invoke-direct {v0, v1, v15, v2, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->m:Lfy;

    new-instance v0, Lfy;

    const-string v1, "ENUM"

    sget-object v2, Lfz;->h:Lfz;

    const/16 v15, 0xd

    .line 14
    invoke-direct {v0, v1, v15, v2, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->n:Lfy;

    new-instance v0, Lfy;

    const-string v1, "SFIXED32"

    sget-object v2, Lfz;->a:Lfz;

    const/16 v15, 0xe

    .line 15
    invoke-direct {v0, v1, v15, v2, v5}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->o:Lfy;

    new-instance v0, Lfy;

    const-string v1, "SFIXED64"

    sget-object v2, Lfz;->b:Lfz;

    const/16 v15, 0xf

    .line 16
    invoke-direct {v0, v1, v15, v2, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->p:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->a:Lfz;

    const-string v2, "SINT32"

    const/16 v15, 0x10

    .line 17
    invoke-direct {v0, v2, v15, v1, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->q:Lfy;

    new-instance v0, Lfy;

    const-string v1, "SINT64"

    sget-object v2, Lfz;->b:Lfz;

    const/16 v15, 0x11

    .line 18
    invoke-direct {v0, v1, v15, v2, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->r:Lfy;

    const/16 v0, 0x12

    new-array v0, v0, [Lfy;

    sget-object v1, Lfy;->a:Lfy;

    aput-object v1, v0, v4

    sget-object v1, Lfy;->b:Lfy;

    aput-object v1, v0, v3

    sget-object v1, Lfy;->c:Lfy;

    aput-object v1, v0, v6

    sget-object v1, Lfy;->d:Lfy;

    aput-object v1, v0, v7

    sget-object v1, Lfy;->e:Lfy;

    aput-object v1, v0, v8

    sget-object v1, Lfy;->f:Lfy;

    aput-object v1, v0, v5

    sget-object v1, Lfy;->g:Lfy;

    aput-object v1, v0, v9

    sget-object v1, Lfy;->h:Lfy;

    aput-object v1, v0, v10

    sget-object v1, Lfy;->i:Lfy;

    aput-object v1, v0, v11

    sget-object v1, Lfy;->j:Lfy;

    aput-object v1, v0, v12

    sget-object v1, Lfy;->k:Lfy;

    aput-object v1, v0, v13

    sget-object v1, Lfy;->l:Lfy;

    aput-object v1, v0, v14

    sget-object v1, Lfy;->m:Lfy;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lfy;->n:Lfy;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lfy;->o:Lfy;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lfy;->p:Lfy;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lfy;->q:Lfy;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lfy;->r:Lfy;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lfy;->u:[Lfy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILfz;I)V
    .registers 5

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lfy;->s:Lfz;

    iput p4, p0, Lfy;->t:I

    return-void
.end method

.method public static values()[Lfy;
    .registers 1

    sget-object v0, Lfy;->u:[Lfy;

    .line 20
    invoke-virtual {v0}, [Lfy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfy;

    return-object v0
.end method
