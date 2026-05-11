.class public final Lg/a/n0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg/a/z0/o;

.field public static final b:Lg/a/z0/o;

.field public static final c:Lg/a/z0/o;

.field public static final d:Lg/a/z0/o;

.field public static final e:Lg/a/z0/o;

.field public static final f:Lg/a/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/a/z0/o;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lg/a/z0/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/a/n0;->a:Lg/a/z0/o;

    new-instance v0, Lg/a/z0/o;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lg/a/z0/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/a/n0;->b:Lg/a/z0/o;

    new-instance v0, Lg/a/z0/o;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lg/a/z0/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/a/n0;->c:Lg/a/z0/o;

    new-instance v0, Lg/a/z0/o;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lg/a/z0/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/a/n0;->d:Lg/a/z0/o;

    new-instance v0, Lg/a/z0/o;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lg/a/z0/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/a/n0;->e:Lg/a/z0/o;

    new-instance v0, Lg/a/w;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/a/w;-><init>(Z)V

    sput-object v0, Lg/a/n0;->f:Lg/a/w;

    return-void
.end method
