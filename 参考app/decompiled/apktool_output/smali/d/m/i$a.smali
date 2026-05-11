.class public Ld/m/i$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/m/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ld/m/d$b;

.field public b:Ld/m/f;


# direct methods
.method public constructor <init>(Ld/m/g;Ld/m/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ld/m/k;->d(Ljava/lang/Object;)Ld/m/f;

    move-result-object p1

    iput-object p1, p0, Ld/m/i$a;->b:Ld/m/f;

    iput-object p2, p0, Ld/m/i$a;->a:Ld/m/d$b;

    return-void
.end method


# virtual methods
.method public a(Ld/m/h;Ld/m/d$a;)V
    .locals 2

    invoke-static {p2}, Ld/m/i;->c(Ld/m/d$a;)Ld/m/d$b;

    move-result-object v0

    iget-object v1, p0, Ld/m/i$a;->a:Ld/m/d$b;

    invoke-static {v1, v0}, Ld/m/i;->e(Ld/m/d$b;Ld/m/d$b;)Ld/m/d$b;

    move-result-object v1

    iput-object v1, p0, Ld/m/i$a;->a:Ld/m/d$b;

    iget-object v1, p0, Ld/m/i$a;->b:Ld/m/f;

    invoke-interface {v1, p1, p2}, Ld/m/f;->d(Ld/m/h;Ld/m/d$a;)V

    iput-object v0, p0, Ld/m/i$a;->a:Ld/m/d$b;

    return-void
.end method
