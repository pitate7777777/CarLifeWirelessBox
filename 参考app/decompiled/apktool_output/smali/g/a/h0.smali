.class public final Lg/a/h0;
.super Lg/a/l0;
.source ""


# instance fields
.field public final i:Lf/m/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/m/a/b<",
            "Ljava/lang/Throwable;",
            "Lf/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/m/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/m/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lf/h;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lg/a/l0;-><init>()V

    iput-object p1, p0, Lg/a/h0;->i:Lf/m/a/b;

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    iget-object v0, p0, Lg/a/h0;->i:Lf/m/a/b;

    invoke-interface {v0, p1}, Lf/m/a/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p1, Lf/h;->a:Lf/h;

    return-object p1
.end method

.method public l(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lg/a/h0;->i:Lf/m/a/b;

    invoke-interface {v0, p1}, Lf/m/a/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
