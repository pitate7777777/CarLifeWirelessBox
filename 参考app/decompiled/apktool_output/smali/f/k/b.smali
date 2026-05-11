.class public abstract Lf/k/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/k/f$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lf/k/f$a;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lf/k/f$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final e:Lf/k/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/k/f$b<",
            "*>;"
        }
    .end annotation
.end field

.field public final f:Lf/m/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/m/a/b<",
            "Lf/k/f$a;",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/k/f$b;Lf/m/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/k/f$b<",
            "TB;>;",
            "Lf/m/a/b<",
            "-",
            "Lf/k/f$a;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf/k/b;->f:Lf/m/a/b;

    instance-of p2, p1, Lf/k/b;

    if-eqz p2, :cond_0

    check-cast p1, Lf/k/b;

    iget-object p1, p1, Lf/k/b;->e:Lf/k/f$b;

    :cond_0
    iput-object p1, p0, Lf/k/b;->e:Lf/k/f$b;

    return-void
.end method


# virtual methods
.method public final a(Lf/k/f$a;)Lf/k/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/k/f$a;",
            ")TE;"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lf/k/b;->f:Lf/m/a/b;

    invoke-interface {v0, p1}, Lf/m/a/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/k/f$a;

    return-object p1
.end method
