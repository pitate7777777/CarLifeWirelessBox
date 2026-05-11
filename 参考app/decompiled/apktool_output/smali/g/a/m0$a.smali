.class public final Lg/a/m0$a;
.super Lg/a/l0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final i:Lg/a/m0;

.field public final j:Lg/a/m0$b;

.field public final k:Lg/a/f;

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/a/m0;Lg/a/m0$b;Lg/a/f;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lg/a/l0;-><init>()V

    iput-object p1, p0, Lg/a/m0$a;->i:Lg/a/m0;

    iput-object p2, p0, Lg/a/m0$a;->j:Lg/a/m0$b;

    iput-object p3, p0, Lg/a/m0$a;->k:Lg/a/f;

    iput-object p4, p0, Lg/a/m0$a;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lg/a/m0$a;->l(Ljava/lang/Throwable;)V

    sget-object p1, Lf/h;->a:Lf/h;

    return-object p1
.end method

.method public l(Ljava/lang/Throwable;)V
    .locals 3

    iget-object p1, p0, Lg/a/m0$a;->i:Lg/a/m0;

    iget-object v0, p0, Lg/a/m0$a;->j:Lg/a/m0$b;

    iget-object v1, p0, Lg/a/m0$a;->k:Lg/a/f;

    iget-object v2, p0, Lg/a/m0$a;->l:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lg/a/m0;->e(Lg/a/m0;Lg/a/m0$b;Lg/a/f;Ljava/lang/Object;)V

    return-void
.end method
