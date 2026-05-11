.class public Ld/k/d/m0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/m/h;


# instance fields
.field public e:Ld/m/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/k/d/m0;->e:Ld/m/i;

    return-void
.end method


# virtual methods
.method public b()Ld/m/d;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/k/d/m0;->e:Ld/m/i;

    if-nez v0, :cond_0

    new-instance v0, Ld/m/i;

    invoke-direct {v0, p0}, Ld/m/i;-><init>(Ld/m/h;)V

    iput-object v0, p0, Ld/k/d/m0;->e:Ld/m/i;

    .line 2
    :cond_0
    iget-object v0, p0, Ld/k/d/m0;->e:Ld/m/i;

    return-object v0
.end method
