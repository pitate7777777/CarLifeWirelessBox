.class public final enum Lg/a/a1/a$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/a1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/a/a1/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lg/a/a1/a$b;

.field public static final enum f:Lg/a/a1/a$b;

.field public static final enum g:Lg/a/a1/a$b;

.field public static final enum h:Lg/a/a1/a$b;

.field public static final enum i:Lg/a/a1/a$b;

.field public static final synthetic j:[Lg/a/a1/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lg/a/a1/a$b;

    const-string v1, "CPU_ACQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/a/a1/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/a1/a$b;->e:Lg/a/a1/a$b;

    new-instance v0, Lg/a/a1/a$b;

    const-string v1, "BLOCKING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lg/a/a1/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/a1/a$b;->f:Lg/a/a1/a$b;

    new-instance v0, Lg/a/a1/a$b;

    const-string v1, "PARKING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lg/a/a1/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/a1/a$b;->g:Lg/a/a1/a$b;

    new-instance v0, Lg/a/a1/a$b;

    const-string v1, "DORMANT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lg/a/a1/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/a1/a$b;->h:Lg/a/a1/a$b;

    new-instance v0, Lg/a/a1/a$b;

    const-string v1, "TERMINATED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lg/a/a1/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/a1/a$b;->i:Lg/a/a1/a$b;

    const/4 v1, 0x5

    new-array v1, v1, [Lg/a/a1/a$b;

    .line 1
    sget-object v7, Lg/a/a1/a$b;->e:Lg/a/a1/a$b;

    aput-object v7, v1, v2

    sget-object v2, Lg/a/a1/a$b;->f:Lg/a/a1/a$b;

    aput-object v2, v1, v3

    sget-object v2, Lg/a/a1/a$b;->g:Lg/a/a1/a$b;

    aput-object v2, v1, v4

    sget-object v2, Lg/a/a1/a$b;->h:Lg/a/a1/a$b;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    .line 2
    sput-object v1, Lg/a/a1/a$b;->j:[Lg/a/a1/a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/a/a1/a$b;
    .locals 1

    const-class v0, Lg/a/a1/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/a1/a$b;

    return-object p0
.end method

.method public static values()[Lg/a/a1/a$b;
    .locals 2

    sget-object v0, Lg/a/a1/a$b;->j:[Lg/a/a1/a$b;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/a/a1/a$b;

    return-object v0
.end method
