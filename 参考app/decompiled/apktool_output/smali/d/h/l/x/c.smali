.class public Ld/h/l/x/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/h/l/x/c$c;,
        Ld/h/l/x/c$b;,
        Ld/h/l/x/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Ld/h/l/x/c$c;

    invoke-direct {v0, p0}, Ld/h/l/x/c$c;-><init>(Ld/h/l/x/c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ld/h/l/x/c$b;

    invoke-direct {v0, p0}, Ld/h/l/x/c$b;-><init>(Ld/h/l/x/c;)V

    :goto_0
    iput-object v0, p0, Ld/h/l/x/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/h/l/x/c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Ld/h/l/x/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)Ld/h/l/x/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
