.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$BlacklistObserver;,
        Lcom/android/server/LocationManagerService$LocationWorkerHandler;,
        Lcom/android/server/LocationManagerService$ProximityListener;,
        Lcom/android/server/LocationManagerService$ProximityAlert;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$LpCapabilityComparator;,
        Lcom/android/server/LocationManagerService$LpAccuracyComparator;,
        Lcom/android/server/LocationManagerService$LpPowerComparator;,
        Lcom/android/server/LocationManagerService$SettingsObserver;,
        Lcom/android/server/LocationManagerService$Receiver;
    }
.end annotation


# static fields
.field private static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final ACCESS_MOCK_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MOCK_LOCATION"

.field private static final BLACKLIST_CONFIG_NAME:Ljava/lang/String; = "locationPackagePrefixBlacklist"

.field private static final INSTALL_LOCATION_PROVIDER:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_PROVIDER"

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_PROVIDER_SCHEDULING_JITTER:I = 0x64

.field private static final MESSAGE_LOCATION_CHANGED:I = 0x1

.field private static final MESSAGE_PACKAGE_UPDATED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LocationManagerService"

.field private static final WHITELIST_CONFIG_NAME:Ljava/lang/String; = "locationPackagePrefixWhitelist"

.field private static sProvidersLoaded:Z


# instance fields
.field private mBlacklist:[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDisabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeocodeProviderPackageName:Ljava/lang/String;

.field mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

.field private mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mLastKnownLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLastWriteTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mMockProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/MockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

.field private mNetworkLocationProviderPackageName:Ljava/lang/String;

.field private mNetworkState:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPendingBroadcasts:I

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitiesEntered:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/LocationManagerService$ProximityAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityAlerts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/PendingIntent;",
            "Lcom/android/server/LocationManagerService$ProximityAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityListener:Landroid/location/ILocationListener;

.field private mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSettings:Landroid/content/ContentQueryMap;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWhitelist:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 584
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastWriteTime:Ljava/util/HashMap;

    .line 125
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    .line 128
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    .line 154
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 168
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 174
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 179
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 186
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 189
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 190
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 191
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    .line 193
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    .line 200
    iput v4, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    .line 203
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mWhitelist:[Ljava/lang/String;

    .line 204
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:[Ljava/lang/String;

    .line 2021
    new-instance v1, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2114
    new-instance v1, Lcom/android/server/LocationManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 585
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 586
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 588
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x104001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    .line 590
    const v1, 0x104001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    .line 593
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1, p1, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 598
    return-void
.end method

.method private _getAllProvidersLocked()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 722
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 723
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 724
    .local v2, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 726
    .end local v2           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_0
    return-object v1
.end method

.method private _getLastKnownLocationLocked(Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .locals 3
    .parameter "provider"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 1831
    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/LocationManagerService;->checkPackageName(ILjava/lang/String;)V

    .line 1834
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1835
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_1

    .line 1847
    :cond_0
    :goto_0
    return-object v1

    .line 1839
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1843
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->inBlacklist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1847
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    goto :goto_0
.end method

.method private _getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 1758
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 1759
    .local v1, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v1, :cond_0

    .line 1776
    :goto_0
    return-object v0

    .line 1763
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1765
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1766
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "network"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresNetwork()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1767
    const-string v2, "satellite"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresSatellite()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1768
    const-string v2, "cell"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresCell()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1769
    const-string v2, "cost"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->hasMonetaryCost()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1770
    const-string v2, "altitude"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsAltitude()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1771
    const-string v2, "speed"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsSpeed()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1772
    const-string v2, "bearing"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsBearing()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1773
    const-string v2, "power"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1774
    const-string v2, "accuracy"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private _getProvidersLocked(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 5
    .parameter "criteria"
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 747
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 748
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 749
    .local v3, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 751
    if-eqz p2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 747
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 754
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v3, p1}, Lcom/android/server/location/LocationProviderInterface;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 757
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 760
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    return-object v2
.end method

.method private _isProviderEnabledLocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 1805
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1807
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1808
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    .line 1809
    const/4 v1, 0x0

    .line 1811
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private _loadProvidersLocked()V
    .locals 7

    .prologue
    .line 497
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 499
    new-instance v0, Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p0}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    .line 500
    .local v0, gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 501
    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 502
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 503
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    .line 507
    .end local v0           #gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    :cond_0
    new-instance v2, Lcom/android/server/location/PassiveProvider;

    invoke-direct {v2, p0}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/location/ILocationManager;)V

    .line 508
    .local v2, passiveProvider:Lcom/android/server/location/PassiveProvider;
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 509
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/android/server/location/PassiveProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 520
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    .line 521
    .local v1, packageName:Ljava/lang/String;
    new-instance v3, Lcom/android/server/location/LocationProviderProxy;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "network"

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    .line 524
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    .line 525
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 527
    .end local v1           #packageName:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 528
    const-string v3, "com.android.location.service.GeocodeProvider"

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/LocationManagerService;->findBestPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    .restart local v1       #packageName:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 531
    new-instance v3, Lcom/android/server/location/GeocoderProxy;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 532
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    .line 536
    .end local v1           #packageName:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 537
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LocationManagerService;)Landroid/location/ILocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->inBlacklist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/LocationManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/LocationManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/LocationManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/LocationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/LocationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->reloadBlacklist()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->incrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method private addProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    return-void
.end method

.method private addProximityAlertLocked(DDFJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 15
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1681
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p9

    invoke-direct {p0, v2, v0}, Lcom/android/server/LocationManagerService;->checkPackageName(ILjava/lang/String;)V

    .line 1684
    const-string v2, "gps"

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "network"

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1686
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1689
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, p6, v2

    if-eqz v2, :cond_2

    .line 1690
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long p6, p6, v2

    .line 1692
    :cond_2
    new-instance v1, Lcom/android/server/LocationManagerService$ProximityAlert;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/android/server/LocationManagerService$ProximityAlert;-><init>(Lcom/android/server/LocationManagerService;IDDFJLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1694
    .local v1, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    move-object/from16 v0, p8

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-nez v2, :cond_3

    .line 1697
    new-instance v2, Lcom/android/server/LocationManagerService$ProximityListener;

    invoke-direct {v2, p0}, Lcom/android/server/LocationManagerService$ProximityListener;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 1698
    new-instance v2, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    move-object/from16 v0, p9

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 1700
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .local v13, i:I
    :goto_0
    if-ltz v13, :cond_3

    .line 1701
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/location/LocationProviderInterface;

    .line 1702
    .local v14, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v14}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V

    .line 1700
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 1706
    .end local v13           #i:I
    .end local v14           #provider:Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    return-void
.end method

.method private static arrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "array"

    .prologue
    .line 2383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2384
    .local v5, s:Ljava/lang/StringBuilder;
    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2385
    const/4 v2, 0x1

    .line 2386
    .local v2, first:Z
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 2387
    .local v0, a:Ljava/lang/String;
    if-nez v2, :cond_0

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2388
    :cond_0
    const/4 v2, 0x0

    .line 2389
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2386
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2391
    .end local v0           #a:Ljava/lang/String;
    :cond_1
    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2392
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/location/LocationProviderInterface;"
        }
    .end annotation

    .prologue
    .local p1, providerNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 840
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 841
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 842
    .local v5, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 843
    .local v3, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 845
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 848
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    .line 885
    :goto_1
    return-object v9

    .line 852
    :cond_1
    new-instance v9, Lcom/android/server/LocationManagerService$LpPowerComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpPowerComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 853
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v4

    .line 854
    .local v4, power:I
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 855
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto :goto_1

    .line 860
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 861
    .local v7, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    const/4 v2, 0x0

    .line 862
    .local v2, idx:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 863
    .local v6, size:I
    :goto_2
    if-ge v2, v6, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v9

    if-ne v9, v4, :cond_3

    .line 864
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 869
    :cond_3
    new-instance v9, Lcom/android/server/LocationManagerService$LpAccuracyComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpAccuracyComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 870
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v0

    .line 871
    .local v0, acc:I
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v9

    if-ge v0, v9, :cond_4

    .line 872
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto :goto_1

    .line 875
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .local v8, tmp2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    const/4 v2, 0x0

    .line 877
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 878
    :goto_3
    if-ge v2, v6, :cond_5

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v9

    if-ne v9, v0, :cond_5

    .line 879
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 884
    :cond_5
    new-instance v9, Lcom/android/server/LocationManagerService$LpCapabilityComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 885
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto/16 :goto_1
.end method

.method private checkMockPermissionsSafe()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2196
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2198
    .local v0, allowMocks:Z
    :goto_0
    if-nez v0, :cond_1

    .line 2199
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION secure setting"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #allowMocks:Z
    :cond_0
    move v0, v1

    .line 2196
    goto :goto_0

    .line 2202
    .restart local v0       #allowMocks:Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 2204
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2206
    :cond_2
    return-void
.end method

.method private checkPackageName(ILjava/lang/String;)V
    .locals 8
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 2445
    if-nez p2, :cond_0

    .line 2446
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "packageName cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2448
    :cond_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 2449
    .local v3, packages:[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 2450
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2452
    :cond_1
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 2453
    .local v4, pkg:Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 2452
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2455
    .end local v4           #pkg:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "invalid package name"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "provider"
    .parameter "lastPermission"

    .prologue
    .line 661
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires ACCESS_FINE_LOCATION permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_1
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    .line 679
    .end local p2
    :cond_2
    :goto_0
    return-object p2

    .line 672
    .restart local p2
    :cond_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 674
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    goto :goto_0

    .line 677
    :cond_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 679
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    goto :goto_0

    .line 682
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires ACCESS_FINE_LOCATION or ACCESS_COARSE_LOCATION permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decrementPendingBroadcasts()V
    .locals 4

    .prologue
    .line 2145
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2146
    :try_start_0
    iget v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2149
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2150
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2151
    const-string v1, "Released wakelock"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2161
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2162
    return-void

    .line 2153
    :cond_1
    :try_start_3
    const-string v1, "Can\'t release wakelock again!"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2155
    :catch_0
    move-exception v0

    .line 2158
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "LocationManagerService"

    const-string v3, "exception in releaseWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2161
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private getMinTimeLocked(Ljava/lang/String;)J
    .locals 13
    .parameter "provider"

    .prologue
    .line 1038
    const-wide v5, 0x7fffffffffffffffL

    .line 1039
    .local v5, minTime:J
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1040
    .local v7, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v9}, Landroid/os/WorkSource;->clear()V

    .line 1041
    if-eqz v7, :cond_3

    .line 1042
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 1043
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1044
    .local v8, ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-wide v0, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    .line 1045
    .local v0, curTime:J
    cmp-long v9, v0, v5

    if-gez v9, :cond_0

    .line 1046
    move-wide v5, v0

    .line 1042
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1049
    .end local v0           #curTime:J
    .end local v8           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1
    const-wide/16 v9, 0x3

    mul-long/2addr v9, v5

    const-wide/16 v11, 0x2

    div-long v3, v9, v11

    .line 1050
    .local v3, inclTime:J
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1051
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1052
    .restart local v8       #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-wide v9, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    cmp-long v9, v9, v3

    if-gtz v9, :cond_2

    .line 1053
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget v10, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    invoke-virtual {v9, v10}, Landroid/os/WorkSource;->add(I)Z

    .line 1050
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1057
    .end local v2           #i:I
    .end local v3           #inclTime:J
    .end local v8           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_3
    return-wide v5
.end method

.method private getReceiver(Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;
    .locals 2
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1145
    .local v0, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    .line 1146
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    .end local v0           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1147
    .restart local v0       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    :cond_0
    return-object v0
.end method

.method private getReceiver(Landroid/location/ILocationListener;Ljava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;
    .locals 5
    .parameter "listener"
    .parameter "packageName"

    .prologue
    .line 1125
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1126
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 1127
    .local v2, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v2, :cond_0

    .line 1128
    new-instance v2, Lcom/android/server/LocationManagerService$Receiver;

    .end local v2           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Ljava/lang/String;)V

    .line 1129
    .restart local v2       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1133
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v3, v2

    .line 1140
    :goto_0
    return-object v3

    .line 1135
    :catch_0
    move-exception v1

    .line 1136
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "LocationManagerService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "key"

    .prologue
    .line 2396
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2397
    .local v1, flatString:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2398
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    .line 2409
    :goto_0
    return-object v7

    .line 2400
    :cond_0
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2401
    .local v6, splitStrings:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2402
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 2403
    .local v4, pkg:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2404
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2402
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2407
    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2409
    .end local v4           #pkg:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Z)V
    .locals 22
    .parameter "location"
    .parameter "passive"

    .prologue
    .line 1874
    if-eqz p2, :cond_1

    const-string v13, "passive"

    .line 1875
    .local v13, provider:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1876
    .local v17, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_2

    .line 1954
    :cond_0
    return-void

    .line 1874
    .end local v13           #provider:Ljava/lang/String;
    .end local v17           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 1880
    .restart local v13       #provider:Ljava/lang/String;
    .restart local v17       #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/LocationProviderInterface;

    .line 1881
    .local v10, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v10, :cond_0

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    .line 1887
    .local v7, lastLocation:Landroid/location/Location;
    if-nez v7, :cond_4

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    move-object/from16 v19, v0

    new-instance v20, Landroid/location/Location;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    :goto_1
    invoke-interface {v10}, Lcom/android/server/location/LocationProviderInterface;->getStatusUpdateTime()J

    move-result-wide v8

    .line 1897
    .local v8, newStatusUpdateTime:J
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1898
    .local v4, extras:Landroid/os/Bundle;
    invoke-interface {v10, v4}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v18

    .line 1900
    .local v18, status:I
    const/4 v3, 0x0

    .line 1903
    .local v3, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1904
    .local v2, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v2, :cond_d

    .line 1905
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1906
    .local v14, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v15, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 1907
    .local v15, receiver:Lcom/android/server/LocationManagerService$Receiver;
    const/16 v16, 0x0

    .line 1909
    .local v16, receiverDead:Z
    iget-object v0, v15, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->inBlacklist(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1904
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1890
    .end local v2           #N:I
    .end local v3           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v5           #i:I
    .end local v8           #newStatusUpdateTime:J
    .end local v14           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v16           #receiverDead:Z
    .end local v18           #status:I
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_1

    .line 1913
    .restart local v2       #N:I
    .restart local v3       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v4       #extras:Landroid/os/Bundle;
    .restart local v5       #i:I
    .restart local v8       #newStatusUpdateTime:J
    .restart local v14       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v15       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .restart local v16       #receiverDead:Z
    .restart local v18       #status:I
    :cond_5
    iget-object v6, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 1914
    .local v6, lastLoc:Landroid/location/Location;
    if-eqz v6, :cond_6

    move-object/from16 v0, p1

    invoke-static {v0, v6, v14}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1915
    :cond_6
    if-nez v6, :cond_c

    .line 1916
    new-instance v6, Landroid/location/Location;

    .end local v6           #lastLoc:Landroid/location/Location;
    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 1917
    .restart local v6       #lastLoc:Landroid/location/Location;
    iput-object v6, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 1921
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 1922
    const-string v19, "LocationManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException calling onLocationChanged on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    const/16 v16, 0x1

    .line 1927
    :cond_7
    iget-wide v11, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 1928
    .local v11, prevStatusUpdateTime:J
    cmp-long v19, v8, v11

    if-lez v19, :cond_9

    const-wide/16 v19, 0x0

    cmp-long v19, v11, v19

    if-nez v19, :cond_8

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 1931
    :cond_8
    iput-wide v8, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 1932
    move/from16 v0, v18

    invoke-virtual {v15, v13, v0, v4}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 1933
    const/16 v16, 0x1

    .line 1934
    const-string v19, "LocationManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException calling onStatusChanged on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_9
    if-nez v16, :cond_a

    iget-boolean v0, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mSingleShot:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 1940
    :cond_a
    if-nez v3, :cond_b

    .line 1941
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1943
    .restart local v3       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_b
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 1944
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1919
    .end local v11           #prevStatusUpdateTime:J
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_4

    .line 1949
    .end local v6           #lastLoc:Landroid/location/Location;
    .end local v14           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v16           #receiverDead:Z
    :cond_d
    if-eqz v3, :cond_0

    .line 1950
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v5, v19, -0x1

    :goto_5
    if-ltz v5, :cond_0

    .line 1951
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1950
    add-int/lit8 v5, v5, -0x1

    goto :goto_5
.end method

.method private inBlacklist(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    .line 2416
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2417
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 2418
    .local v1, black:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2419
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->inWhitelist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2417
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2424
    :cond_1
    const/4 v4, 0x1

    monitor-exit v5

    .line 2429
    .end local v1           #black:Ljava/lang/String;
    :goto_1
    return v4

    .line 2428
    :cond_2
    monitor-exit v5

    .line 2429
    const/4 v4, 0x0

    goto :goto_1

    .line 2428
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private inWhitelist(Ljava/lang/String;)Z
    .locals 6
    .parameter "pkg"

    .prologue
    .line 2436
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2437
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mWhitelist:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 2438
    .local v3, white:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 2441
    .end local v3           #white:Ljava/lang/String;
    :goto_1
    return v4

    .line 2437
    .restart local v3       #white:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2440
    .end local v3           #white:Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 2441
    const/4 v4, 0x0

    goto :goto_1

    .line 2440
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private incrementPendingBroadcasts()V
    .locals 4

    .prologue
    .line 2130
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2131
    :try_start_0
    iget v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2133
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2134
    const-string v1, "Acquired wakelock"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2141
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2142
    return-void

    .line 2135
    :catch_0
    move-exception v0

    .line 2138
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v3, "exception in acquireWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2141
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initialize()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 608
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 609
    .local v7, powerManager:Landroid/os/PowerManager;
    const-string v1, "LocationManagerService"

    invoke-virtual {v7, v12, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 610
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 613
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProviders()V

    .line 614
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadBlacklist()V

    .line 617
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 618
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 624
    new-instance v8, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 625
    .local v8, sdFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 628
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 629
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v12, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "location_providers_allowed"

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 633
    .local v9, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v9, v3, v12, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 634
    new-instance v10, Lcom/android/server/LocationManagerService$SettingsObserver;

    invoke-direct {v10, p0, v2}, Lcom/android/server/LocationManagerService$SettingsObserver;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    .line 635
    .local v10, settingsObserver:Lcom/android/server/LocationManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v10}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 636
    return-void
.end method

.method private isAllowedBySettingsLocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 648
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    const/4 v1, 0x1

    .line 657
    :goto_0
    return v1

    .line 651
    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    const/4 v1, 0x0

    goto :goto_0

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 657
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isAllowedProviderSafe(Ljava/lang/String;)Z
    .locals 3
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 687
    const-string v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "passive"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 701
    :cond_1
    :goto_0
    return v0

    .line 693
    :cond_2
    const-string v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 701
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadBlacklist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2363
    new-instance v0, Lcom/android/server/LocationManagerService$BlacklistObserver;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LocationManagerService$BlacklistObserver;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 2364
    .local v0, observer:Lcom/android/server/LocationManagerService$BlacklistObserver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "locationPackagePrefixBlacklist"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2366
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "locationPackagePrefixWhitelist"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2368
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->reloadBlacklist()V

    .line 2369
    return-void
.end method

.method private loadProviders()V
    .locals 2

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    :try_start_0
    sget-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    if-eqz v0, :cond_0

    .line 478
    monitor-exit v1

    .line 485
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProvidersLocked()V

    .line 483
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    .line 484
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadProvidersLocked()V
    .locals 3

    .prologue
    .line 489
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->_loadProvidersLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "Exception loading providers:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .parameter "log"

    .prologue
    .line 2459
    const-string v0, "LocationManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2460
    const-string v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    :cond_0
    return-void
.end method

.method private nextAccuracy(I)I
    .locals 1
    .parameter "accuracy"

    .prologue
    .line 788
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 789
    const/4 v0, 0x2

    .line 791
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextPower(I)I
    .locals 1
    .parameter "power"

    .prologue
    const/4 v0, 0x0

    .line 769
    packed-switch p1, :pswitch_data_0

    .line 778
    :goto_0
    :pswitch_0
    return v0

    .line 771
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 773
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z
    .locals 7
    .parameter "provider"
    .parameter "uid"
    .parameter "excludedReceiver"

    .prologue
    const/4 v5, 0x1

    .line 1153
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1154
    .local v4, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v4, :cond_1

    .line 1155
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1156
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1157
    .local v3, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget v6, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    if-ne v6, p2, :cond_0

    iget-object v6, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-eq v6, p3, :cond_0

    .line 1167
    .end local v1           #i:I
    .end local v3           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :goto_1
    return v5

    .line 1155
    .restart local v1       #i:I
    .restart local v3       #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1162
    .end local v1           #i:I
    .end local v3           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 1163
    .local v0, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget v6, v0, Lcom/android/server/LocationManagerService$ProximityAlert;->mUid:I

    if-ne v6, p2, :cond_2

    goto :goto_1

    .line 1167
    .end local v0           #alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private reloadBlacklist()V
    .locals 6

    .prologue
    .line 2372
    const-string v2, "locationPackagePrefixBlacklist"

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2373
    .local v0, blacklist:[Ljava/lang/String;
    const-string v2, "locationPackagePrefixWhitelist"

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2374
    .local v1, whitelist:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2375
    :try_start_0
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mWhitelist:[Ljava/lang/String;

    .line 2376
    const-string v2, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "whitelist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mWhitelist:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->arrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:[Ljava/lang/String;

    .line 2378
    const-string v2, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blacklist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mBlacklist:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->arrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    monitor-exit v3

    .line 2380
    return-void

    .line 2379
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    return-void
.end method

.method private removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1727
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1729
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1732
    :cond_0
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 1733
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 1735
    :cond_1
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 20
    .parameter "receiver"

    .prologue
    .line 1322
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1323
    .local v3, callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1324
    .local v4, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1326
    .local v7, identity:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1327
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1328
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    move/from16 v17, v0

    if-lez v17, :cond_0

    .line 1330
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V

    .line 1331
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1333
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1337
    :cond_1
    :try_start_2
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1338
    .local v14, providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 1339
    .local v11, oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v11, :cond_4

    .line 1341
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1342
    .local v15, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v0, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/location/LocationProviderInterface;

    .line 1344
    .local v12, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v12, :cond_2

    .line 1345
    invoke-interface {v12, v4}, Lcom/android/server/location/LocationProviderInterface;->removeListener(I)V

    .line 1348
    .end local v12           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    invoke-virtual {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1384
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v14           #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v17

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17

    .line 1333
    :catchall_1
    move-exception v17

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v17

    .line 1351
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v11       #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v14       #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1357
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1359
    .local v13, provider:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1363
    const/4 v5, 0x0

    .line 1364
    .local v5, hasOtherListener:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 1365
    .local v16, recordsForProvider:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_6

    .line 1366
    const/4 v5, 0x1

    .line 1369
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/location/LocationProviderInterface;

    .line 1370
    .restart local v12       #p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v12, :cond_5

    .line 1371
    if-eqz v5, :cond_7

    .line 1372
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v9

    .line 1373
    .local v9, minTime:J
    const-string v17, "LocationManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (pid "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), next minTime = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v12, v9, v10, v0}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    goto/16 :goto_1

    .line 1377
    .end local v9           #minTime:J
    :cond_7
    const-string v17, "LocationManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (pid "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), disabled"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1384
    .end local v5           #hasOtherListener:Z
    .end local v12           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v13           #provider:Ljava/lang/String;
    .end local v16           #recordsForProvider:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_8
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1386
    return-void
.end method

.method private requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V
    .locals 21
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "receiver"

    .prologue
    .line 1240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/location/LocationProviderInterface;

    .line 1241
    .local v20, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v20, :cond_0

    .line 1242
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requested provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t exisit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1245
    :cond_0
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/android/server/LocationManagerService$Receiver;->mRequiredPermissions:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/android/server/LocationManagerService$Receiver;->mRequiredPermissions:Ljava/lang/String;

    .line 1249
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1250
    .local v12, callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1251
    .local v11, callingUid:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v4}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v18, 0x1

    .line 1252
    .local v18, newUid:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1254
    .local v13, identity:J
    :try_start_0
    new-instance v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v11}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;I)V

    .line 1256
    .local v3, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1257
    .local v19, oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v19, :cond_1

    .line 1258
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked()V

    .line 1261
    :cond_1
    if-eqz v18, :cond_2

    .line 1262
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lcom/android/server/location/LocationProviderInterface;->addListener(I)V

    .line 1265
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v15

    .line 1266
    .local v15, isProviderEnabled:Z
    if-eqz v15, :cond_7

    .line 1267
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v16

    .line 1268
    .local v16, minTimeForProvider:J
    const-string v5, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p5, :cond_6

    const-string v4, " (singleshot)"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-interface {v0, v1, v2, v4}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    .line 1273
    if-eqz p5, :cond_3

    invoke-interface/range {v20 .. v20}, Lcom/android/server/location/LocationProviderInterface;->requestSingleShotFix()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1274
    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    .end local v16           #minTimeForProvider:J
    :cond_4
    :goto_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1286
    return-void

    .line 1251
    .end local v3           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v13           #identity:J
    .end local v15           #isProviderEnabled:Z
    .end local v18           #newUid:Z
    .end local v19           #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1268
    .restart local v3       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v13       #identity:J
    .restart local v15       #isProviderEnabled:Z
    .restart local v16       #minTimeForProvider:J
    .restart local v18       #newUid:Z
    .restart local v19       #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_6
    :try_start_1
    const-string v4, ""

    goto :goto_1

    .line 1278
    .end local v16           #minTimeForProvider:J
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1284
    .end local v3           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15           #isProviderEnabled:Z
    .end local v19           #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v4

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private static shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .locals 10
    .parameter "loc"
    .parameter "lastLoc"
    .parameter "record"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1852
    if-nez p1, :cond_1

    .line 1870
    :cond_0
    :goto_0
    return v4

    .line 1857
    :cond_1
    iget-wide v2, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    .line 1858
    .local v2, minTime:J
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    sub-long v8, v2, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    move v4, v5

    .line 1859
    goto :goto_0

    .line 1863
    :cond_2
    iget v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinDistance:F

    float-to-double v0, v6

    .line 1864
    .local v0, minDistance:D
    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_0

    .line 1865
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v6

    float-to-double v6, v6

    cmpg-double v6, v6, v0

    if-gtz v6, :cond_0

    move v4, v5

    .line 1866
    goto :goto_0
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .locals 10
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 994
    const/4 v3, 0x0

    .line 996
    .local v3, listeners:I
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 997
    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v4, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    const/4 v1, 0x0

    .line 1003
    .local v1, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1004
    .local v6, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_4

    .line 1005
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1006
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1007
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1009
    .local v5, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1010
    if-nez v1, :cond_2

    .line 1011
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    .restart local v1       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_2
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 1006
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1019
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_4
    if-eqz v1, :cond_5

    .line 1020
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .restart local v2       #i:I
    :goto_2
    if-ltz v2, :cond_5

    .line 1021
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1020
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1025
    .end local v2           #i:I
    :cond_5
    if-eqz p2, :cond_6

    .line 1026
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    .line 1027
    if-lez v3, :cond_0

    .line 1028
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-interface {v4, v7, v8, v9}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    .line 1029
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    goto :goto_0

    .line 1032
    :cond_6
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 1033
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    goto :goto_0
.end method

.method private updateProvidersLocked()V
    .locals 9

    .prologue
    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, changesMade:Z
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 976
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 977
    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v2

    .line 978
    .local v2, isEnabled:Z
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    .line 979
    .local v3, name:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v5

    .line 980
    .local v5, shouldBeEnabled:Z
    if-eqz v2, :cond_1

    if-nez v5, :cond_1

    .line 981
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 982
    const/4 v0, 0x1

    .line 975
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 983
    :cond_1
    if-nez v2, :cond_0

    if-eqz v5, :cond_0

    .line 984
    const/4 v6, 0x1

    invoke-direct {p0, v3, v6}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 985
    const/4 v0, 0x1

    goto :goto_1

    .line 988
    .end local v2           #isEnabled:Z
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v5           #shouldBeEnabled:Z
    :cond_2
    if-eqz v0, :cond_3

    .line 989
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 991
    :cond_3
    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 1389
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    if-nez v2, :cond_0

    .line 1403
    :goto_0
    return v1

    .line 1392
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1394
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1398
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v2, p1}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    const/4 v1, 0x1

    goto :goto_0

    .line 1399
    :catch_0
    move-exception v0

    .line 1400
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationManagerService"

    const-string v3, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1657
    invoke-virtual {p0, p8}, Lcom/android/server/LocationManagerService;->validatePendingIntent(Landroid/app/PendingIntent;)V

    .line 1659
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1660
    :try_start_1
    invoke-direct/range {p0 .. p9}, Lcom/android/server/LocationManagerService;->addProximityAlertLocked(DDFJLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1662
    monitor-exit v4

    .line 1670
    :goto_0
    return-void

    .line 1662
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1663
    :catch_0
    move-exception v2

    .line 1664
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1665
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1666
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1667
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1668
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "addProximityAlert got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 17
    .parameter "name"
    .parameter "requiresNetwork"
    .parameter "requiresSatellite"
    .parameter "requiresCell"
    .parameter "hasMonetaryCost"
    .parameter "supportsAltitude"
    .parameter "supportsSpeed"
    .parameter "supportsBearing"
    .parameter "powerRequirement"
    .parameter "accuracy"

    .prologue
    .line 2211
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2213
    const-string v2, "passive"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2214
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot mock the passive location provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2217
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2218
    .local v13, identity:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2219
    :try_start_0
    new-instance v1, Lcom/android/server/location/MockProvider;

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V

    .line 2224
    .local v1, provider:Lcom/android/server/location/MockProvider;
    const-string v2, "gps"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "network"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2226
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/location/LocationProviderInterface;

    .line 2227
    .local v15, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v15, :cond_2

    .line 2228
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 2229
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2232
    .end local v15           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2233
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" already exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2239
    .end local v1           #provider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2235
    .restart local v1       #provider:Lcom/android/server/location/MockProvider;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2239
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2240
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2241
    return-void
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 7
    .parameter "provider"

    .prologue
    .line 2315
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2316
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2317
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2318
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2319
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2326
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2321
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2322
    .local v0, identity:J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2323
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2324
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2326
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2327
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 2282
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2283
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2284
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2285
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2286
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2289
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2288
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearLocation()V

    .line 2289
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2290
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 2341
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2342
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2343
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2344
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2345
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2348
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2347
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearStatus()V

    .line 2348
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2349
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2465
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.DUMP"

    invoke-virtual {v13, v14}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_0

    .line 2467
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission Denial: can\'t dump LocationManagerService from from pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2551
    :goto_0
    return-void

    .line 2473
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2474
    :try_start_0
    const-string v13, "Current Location Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2475
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  sProvidersLoaded="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v15, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2476
    const-string v13, "  Listeners:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2477
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 2478
    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 2479
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2478
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2481
    :cond_1
    const-string v13, "  Location Listeners:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2482
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v2           #i:I
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 2483
    .local v2, i:Lcom/android/server/LocationManagerService$Receiver;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2484
    iget-object v13, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2485
    .local v10, j:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2486
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/LocationManagerService$UpdateRecord;

    const-string v15, "        "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2

    .line 2550
    .end local v1           #N:I
    .end local v2           #i:Lcom/android/server/LocationManagerService$Receiver;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #j:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 2489
    .restart local v1       #N:I
    :cond_3
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Package blacklist:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mBlacklist:[Ljava/lang/String;

    invoke-static {v15}, Lcom/android/server/LocationManagerService;->arrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2490
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Package whitelist:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mWhitelist:[Ljava/lang/String;

    invoke-static {v15}, Lcom/android/server/LocationManagerService;->arrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2491
    const-string v13, "  Records by Provider:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2494
    .local v6, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2495
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2496
    .local v9, j:Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2497
    const-string v13, "        "

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v13}, Lcom/android/server/LocationManagerService$UpdateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 2500
    .end local v6           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #j:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_5
    const-string v13, "  Last Known Locations:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2503
    .local v4, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2504
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/Location;

    new-instance v15, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v16, "      "

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_4

    .line 2506
    .end local v4           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 2507
    const-string v13, "  Proximity Alerts:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2509
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2510
    .local v3, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/app/PendingIntent;Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2511
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/LocationManagerService$ProximityAlert;

    const-string v15, "      "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Lcom/android/server/LocationManagerService$ProximityAlert;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_5

    .line 2514
    .end local v3           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/app/PendingIntent;Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 2515
    const-string v13, "  Proximities Entered:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2516
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 2517
    .local v2, i:Lcom/android/server/LocationManagerService$ProximityAlert;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2518
    const-string v13, "      "

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v13}, Lcom/android/server/LocationManagerService$ProximityAlert;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_6

    .line 2521
    .end local v2           #i:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mProximityReceiver="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2522
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mProximityListener="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2523
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    if-lez v13, :cond_9

    .line 2524
    const-string v13, "  Enabled Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2525
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2526
    .local v2, i:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2530
    .end local v2           #i:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    if-lez v13, :cond_a

    .line 2531
    const-string v13, "  Disabled Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2532
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2533
    .restart local v2       #i:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 2537
    .end local v2           #i:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_b

    .line 2538
    const-string v13, "  Mock Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2539
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2540
    .local v5, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/MockProvider;

    const-string v15, "      "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Lcom/android/server/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_9

    .line 2543
    .end local v5           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/location/LocationProviderInterface;

    .line 2544
    .local v11, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v11}, Lcom/android/server/location/LocationProviderInterface;->getInternalState()Ljava/lang/String;

    move-result-object v12

    .line 2545
    .local v12, state:Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 2546
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " Internal State:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_a

    .line 2550
    .end local v11           #provider:Lcom/android/server/location/LocationProviderInterface;
    .end local v12           #state:Ljava/lang/String;
    :cond_d
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method findBestPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "serviceIntentName"
    .parameter "sigPackageName"

    .prologue
    .line 547
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v5, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x80

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 550
    .local v4, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 577
    :cond_0
    return-object v0

    .line 552
    :cond_1
    const/high16 v1, -0x8000

    .line 553
    .local v1, bestVersion:I
    const/4 v0, 0x0

    .line 554
    .local v0, bestPackage:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 555
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 557
    .local v6, packageName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v6, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 559
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " implements "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but its signatures don\'t match those in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ignoring"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :cond_3
    const/4 v7, 0x0

    .line 566
    .local v7, version:I
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    .line 567
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "version"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 571
    :cond_4
    if-le v7, v1, :cond_2

    .line 572
    move v1, v7

    .line 573
    move-object v0, v6

    goto :goto_0
.end method

.method public geocoderIsPresent()Z
    .locals 1

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 707
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->_getAllProvidersLocked()Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 713
    :goto_0
    return-object v2

    .line 708
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 709
    :catch_0
    move-exception v1

    .line 710
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 711
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 712
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getAllProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 6
    .parameter "criteria"
    .parameter "enabledOnly"

    .prologue
    const/4 v5, 0x0

    .line 911
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 912
    .local v2, goodProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 913
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 962
    :goto_0
    return-object v4

    .line 917
    :cond_0
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1, p1}, Landroid/location/Criteria;-><init>(Landroid/location/Criteria;)V

    .line 920
    .end local p1
    .local v1, criteria:Landroid/location/Criteria;
    invoke-virtual {v1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v3

    .line 921
    .local v3, power:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 922
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->nextPower(I)I

    move-result v3

    .line 923
    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 924
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 926
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 927
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 931
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_2
    invoke-virtual {v1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    .line 932
    .local v0, accuracy:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 933
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->nextAccuracy(I)I

    move-result v0

    .line 934
    invoke-virtual {v1, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 935
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 937
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 938
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 942
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_4
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 943
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 944
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 945
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 949
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_5
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 950
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 951
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 952
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0

    .line 956
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_6
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 957
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 958
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 959
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0

    .line 962
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_7
    const/4 v4, 0x0

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2172
    .local p7, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2176
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 13
    .parameter "locationName"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2185
    .local p12, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastKnownLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .locals 4
    .parameter "provider"
    .parameter "packageName"

    .prologue
    .line 1819
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1820
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->_getLastKnownLocationLocked(Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    monitor-exit v3

    .line 1826
    :goto_0
    return-object v2

    .line 1821
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1822
    :catch_0
    move-exception v1

    .line 1823
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 1824
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 1825
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getLastKnownLocation got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1826
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .parameter "provider"

    .prologue
    .line 1744
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1745
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    monitor-exit v4

    .line 1753
    :goto_0
    return-object v3

    .line 1746
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1747
    :catch_0
    move-exception v2

    .line 1748
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1749
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1750
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1751
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1752
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "_getProviderInfo got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1753
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 4
    .parameter "criteria"
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 732
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->_getProvidersLocked(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 738
    :goto_0
    return-object v2

    .line 733
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 734
    :catch_0
    move-exception v1

    .line 735
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 736
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 737
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "provider"

    .prologue
    .line 1781
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1782
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_isProviderEnabledLocked(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3

    .line 1788
    :goto_0
    return v2

    .line 1783
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1784
    :catch_0
    move-exception v1

    .line 1785
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 1786
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 1787
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "isProviderEnabled got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1788
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 445
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 446
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 447
    .local v3, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v3, :cond_0

    .line 448
    monitor-enter v3

    .line 450
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 451
    .local v1, identity:J
    #calls: Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V
    invoke-static {v3}, Lcom/android/server/LocationManagerService$Receiver;->access$700(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 452
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 453
    monitor-exit v3

    .line 455
    .end local v1           #identity:J
    :cond_0
    return-void

    .line 453
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z
    .locals 4
    .parameter "provider"
    .parameter "criteria"

    .prologue
    .line 966
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 967
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    .line 968
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 970
    :cond_0
    invoke-interface {v0, p2}, Lcom/android/server/location/LocationProviderInterface;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v1

    return v1
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1407
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1409
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v1, p1}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1414
    return-void

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v3, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1413
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1710
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1711
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V

    .line 1712
    monitor-exit v4

    .line 1720
    :goto_0
    return-void

    .line 1712
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1713
    :catch_0
    move-exception v2

    .line 1714
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1715
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1716
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1717
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1718
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeProximityAlert got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .locals 7
    .parameter "provider"

    .prologue
    .line 2244
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2245
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2246
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2247
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2248
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2264
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2250
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2251
    .local v0, identity:J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2252
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2254
    const-string v3, "gps"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v3, :cond_2

    .line 2256
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2261
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2263
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2264
    monitor-exit v4

    .line 2265
    return-void

    .line 2257
    :cond_2
    const-string v3, "network"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    if-eqz v3, :cond_1

    .line 2259
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Ljava/lang/String;)V
    .locals 5
    .parameter "listener"
    .parameter "packageName"

    .prologue
    .line 1290
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1291
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/location/ILocationListener;Ljava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1292
    monitor-exit v4

    .line 1300
    :goto_0
    return-void

    .line 1292
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1293
    :catch_0
    move-exception v2

    .line 1294
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1295
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1296
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1297
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1298
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeUpdates got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdatesPI(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1304
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1305
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1306
    monitor-exit v4

    .line 1314
    :goto_0
    return-void

    .line 1306
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1307
    :catch_0
    move-exception v2

    .line 1308
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1309
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1310
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1311
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1312
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeUpdates got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportLocation(Landroid/location/Location;Z)V
    .locals 4
    .parameter "location"
    .parameter "passive"

    .prologue
    const/4 v1, 0x1

    .line 1793
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1795
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires INSTALL_LOCATION_PROVIDER permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1798
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1799
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1800
    .local v0, m:Landroid/os/Message;
    if-eqz p2, :cond_1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1801
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1802
    return-void

    .line 1800
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/location/ILocationListener;Ljava/lang/String;)V
    .locals 13
    .parameter "provider"
    .parameter "criteria"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "listener"
    .parameter "packageName"

    .prologue
    .line 1173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p8

    invoke-direct {p0, v2, v0}, Lcom/android/server/LocationManagerService;->checkPackageName(ILjava/lang/String;)V

    .line 1174
    if-eqz p2, :cond_0

    .line 1178
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/android/server/LocationManagerService;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    .line 1179
    if-nez p1, :cond_0

    .line 1180
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no providers found for criteria"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1184
    :cond_0
    :try_start_0
    iget-object v12, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1185
    :try_start_1
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/location/ILocationListener;Ljava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V

    .line 1187
    monitor-exit v12

    .line 1195
    :goto_0
    return-void

    .line 1187
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1188
    :catch_0
    move-exception v11

    .line 1189
    .local v11, se:Ljava/lang/SecurityException;
    throw v11

    .line 1190
    .end local v11           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v10

    .line 1191
    .local v10, iae:Ljava/lang/IllegalArgumentException;
    throw v10

    .line 1192
    .end local v10           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v9

    .line 1193
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "requestUpdates got exception:"

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdatesPI(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 13
    .parameter "provider"
    .parameter "criteria"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p8

    invoke-direct {p0, v2, v0}, Lcom/android/server/LocationManagerService;->checkPackageName(ILjava/lang/String;)V

    .line 1213
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->validatePendingIntent(Landroid/app/PendingIntent;)V

    .line 1214
    if-eqz p2, :cond_0

    .line 1218
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/android/server/LocationManagerService;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    .line 1219
    if-nez p1, :cond_0

    .line 1220
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no providers found for criteria"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1224
    :cond_0
    :try_start_0
    iget-object v12, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1225
    :try_start_1
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V

    .line 1227
    monitor-exit v12

    .line 1235
    :goto_0
    return-void

    .line 1227
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1228
    :catch_0
    move-exception v11

    .line 1229
    .local v11, se:Ljava/lang/SecurityException;
    throw v11

    .line 1230
    .end local v11           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v10

    .line 1231
    .local v10, iae:Ljava/lang/IllegalArgumentException;
    throw v10

    .line 1232
    .end local v10           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v9

    .line 1233
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "requestUpdates got exception:"

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 640
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 641
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 642
    new-instance v0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 643
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initialize()V

    .line 644
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 645
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "provider"
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1417
    if-nez p1, :cond_0

    .line 1419
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1423
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1425
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1427
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1430
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1431
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1432
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_2

    .line 1433
    const/4 v1, 0x0

    monitor-exit v2

    .line 1436
    :goto_0
    return v1

    :cond_2
    invoke-interface {v0, p2, p3}, Lcom/android/server/location/LocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1437
    .end local v0           #p:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendNiResponse(II)Z
    .locals 3
    .parameter "notifId"
    .parameter "userResponse"

    .prologue
    .line 1442
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1443
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "calling sendNiResponse from outside of the system is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1447
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v1, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1452
    :goto_0
    return v1

    .line 1449
    :catch_0
    move-exception v0

    .line 1451
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 7
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2293
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2294
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2295
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2296
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2297
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2311
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2299
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2300
    .local v0, identity:J
    if-eqz p2, :cond_1

    .line 2301
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->enable()V

    .line 2302
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2303
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2309
    :goto_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2311
    monitor-exit v4

    .line 2312
    return-void

    .line 2305
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->disable()V

    .line 2306
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2307
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 7
    .parameter "provider"
    .parameter "loc"

    .prologue
    .line 2268
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2269
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2270
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2271
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2272
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2278
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2275
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2276
    .local v0, identity:J
    invoke-virtual {v2, p2}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    .line 2277
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2278
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2279
    return-void
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 5
    .parameter "provider"
    .parameter "status"
    .parameter "extras"
    .parameter "updateTime"

    .prologue
    .line 2330
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2331
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2332
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2333
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2334
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2337
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2336
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V

    .line 2337
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2338
    return-void
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 602
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "LocationManagerService"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 603
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 604
    return-void
.end method

.method validatePendingIntent(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1198
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1207
    :goto_0
    return-void

    .line 1201
    :cond_0
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given Intent does not require a specific package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
