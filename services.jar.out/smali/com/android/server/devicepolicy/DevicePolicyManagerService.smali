.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;
    }
.end annotation


# static fields
.field protected static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field private static final ATTR_DELEGATED_CERT_INSTALLER:Ljava/lang/String; = "delegated-cert-installer"

.field private static final ATTR_DISABLED:Ljava/lang/String; = "disabled"

.field private static final ATTR_PERMISSION_POLICY:Ljava/lang/String; = "permission-policy"

.field private static final ATTR_PERMISSION_PROVIDER:Ljava/lang/String; = "permission-provider"

.field private static final ATTR_SETUP_COMPLETE:Ljava/lang/String; = "setup-complete"

.field private static final DBG:Z = false

.field private static final DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_POLICIES_XML:Ljava/lang/String; = "device_policies.xml"

.field private static final DO_NOT_ASK_CREDENTIALS_ON_BOOT_XML:Ljava/lang/String; = "do-not-ask-credentials-on-boot"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMMUTABLE_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final MONITORING_CERT_NOTIFICATION_ID:I = 0x104016f

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final PROFILE_KEYGUARD_FEATURES:I = 0x38

.field private static final PROFILE_KEYGUARD_FEATURES_AFFECT_OWNER:I = 0x30

.field private static final PROFILE_WIPED_NOTIFICATION_ID:I = 0x3e9

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field private static final SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURE_SETTINGS_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATUS_BAR_DISABLE2_MASK:I = 0x1

.field private static final STATUS_BAR_DISABLE_MASK:I = 0x2070000

.field public static final SYSTEM_PROP_DISABLE_CAMERA_PREFIX:Ljava/lang/String; = "sys.secpolicy.camera.off_"

.field private static final TAG_LOCK_TASK_COMPONENTS:Ljava/lang/String; = "lock-task-component"

.field private static final TAG_STATUS_BAR:Ljava/lang/String; = "statusbar"

.field private static final VERBOSE_LOG:Z


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

.field mHandler:Landroid/os/Handler;

.field private mHasFeature:Z

.field mIWindowManager:Landroid/view/IWindowManager;

.field final mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

.field mNotificationManager:Landroid/app/NotificationManager;

.field final mPowerManager:Landroid/os/PowerManager;

.field final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mToken:Landroid/os/Binder;

.field final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;",
            ">;"
        }
    .end annotation
.end field

.field final mUserManager:Landroid/os/UserManager;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/NotificationManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .param p3, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminWithPolicyForUidLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearWipeProfileNotification()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePackagesChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePasswordExpirationNotification(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 0
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "responseBinder"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendPrivateKeyAliasResponse(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendWipeProfileNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    .line 205
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_config_tethering"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_network_reset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_factory_reset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_add_user"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_config_cell_broadcasts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_config_mobile_networks"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_physical_media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_unmute_microphone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_adjust_volume"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_fun"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_safe_boot"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_create_windows"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->IMMUTABLE_USER_RESTRICTIONS:Ljava/util/Set;

    .line 226
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->IMMUTABLE_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_wallpaper"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    .line 235
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "default_input_method"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "skip_first_use_hints"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "install_non_market_apps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    .line 240
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 241
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "location_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    .line 244
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "adb_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "auto_time"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "auto_time_zone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "data_roaming"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "wifi_sleep_policy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "wifi_device_owner_configs_lockdown"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    .line 254
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    const-string/jumbo v1, "bluetooth_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    const-string/jumbo v1, "development_settings_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    const-string/jumbo v1, "mode_ringer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    const-string/jumbo v1, "network_preference"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    const-string/jumbo v1, "wifi_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1048
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    .line 287
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mToken:Landroid/os/Binder;

    .line 353
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    .line 355
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 357
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1049
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 1050
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1051
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1052
    const-string/jumbo v1, "android.software.device_admin"

    .line 1051
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    .line 1053
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 1054
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1055
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "DPM"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1056
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    invoke-direct {v0, p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    .line 1057
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 1059
    return-void

    .line 1061
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1062
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1063
    const-string/jumbo v0, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1064
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1065
    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1066
    const-string/jumbo v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1067
    const/16 v0, 0x3e8

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1068
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1069
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1070
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1071
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1072
    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1073
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1074
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1075
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1076
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1077
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1078
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1080
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1048
    return-void
.end method

.method private addDeviceInitializerToLockTaskPackagesLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 6239
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6240
    return-void

    .line 6243
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceInitializer()Ljava/lang/String;

    move-result-object v0

    .line 6244
    .local v0, "deviceInitializerPackage":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 6245
    return-void

    .line 6248
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockTaskPackagesLocked(I)Ljava/util/List;

    move-result-object v1

    .line 6249
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6250
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6251
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setLockTaskPackagesLocked(ILjava/util/List;)V

    .line 6238
    :cond_2
    return-void
.end method

.method private checkCallerIsCurrentUserOrProfile()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 5217
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 5218
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5221
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5223
    .local v0, "callingUser":Landroid/content/pm/UserInfo;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 5229
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v6, v7, :cond_0

    .line 5230
    const-string/jumbo v6, "DevicePolicyManagerService"

    const-string/jumbo v7, "Cannot set permitted input methods for managed profile of a user that isn\'t the foreground user."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5240
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5232
    return v8

    .line 5224
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v3

    .line 5225
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v6, "DevicePolicyManagerService"

    const-string/jumbo v7, "Failed to talk to activity managed."

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5240
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5226
    return v8

    .line 5234
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :cond_0
    :try_start_4
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, v6, :cond_1

    .line 5235
    const-string/jumbo v6, "DevicePolicyManagerService"

    const-string/jumbo v7, "Cannot set permitted input methods of a user that isn\'t the foreground user."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5240
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5237
    return v8

    .line 5240
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5242
    const/4 v6, 0x1

    return v6

    .line 5239
    .end local v0    # "callingUser":Landroid/content/pm/UserInfo;
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v6

    .line 5240
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5239
    throw v6
.end method

.method private checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 5055
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 5056
    .local v9, "userIdToCheck":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5060
    .local v4, "id":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 5061
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5062
    iget v9, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 5065
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 5066
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "enabledPackage$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5067
    .local v2, "enabledPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 5070
    .local v7, "systemService":Z
    const/16 v10, 0x2000

    .line 5069
    :try_start_1
    invoke-interface {v6, v2, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5071
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    const/4 v7, 0x1

    .line 5075
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v7, :cond_1

    :try_start_2
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 5080
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5076
    return v12

    .line 5071
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 5072
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 5073
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v10, "DevicePolicyManagerService"

    const-string/jumbo v11, "Can\'t talk to package managed"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 5079
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "enabledPackage":Ljava/lang/String;
    .end local v3    # "enabledPackage$iterator":Ljava/util/Iterator;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "systemService":Z
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v10

    .line 5080
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5079
    throw v10

    .line 5080
    .restart local v3    # "enabledPackage$iterator":Ljava/util/Iterator;
    .restart local v6    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5082
    const/4 v10, 0x1

    return v10
.end method

.method private cleanUpOldUsers()V
    .locals 10

    .prologue
    .line 1811
    monitor-enter p0

    .line 1812
    :try_start_0
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v9, :cond_0

    .line 1813
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v9}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerKeys()Ljava/util/Set;

    move-result-object v8

    .line 1814
    .local v8, "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1815
    .local v7, "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 1816
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1815
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1813
    .end local v2    # "i":I
    .end local v7    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v8    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v8    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_0

    .restart local v2    # "i":I
    .restart local v7    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    monitor-exit p0

    .line 1819
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1821
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1822
    .local v1, "deletedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1823
    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1824
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "userInfo$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1825
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1811
    .end local v0    # "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v1    # "deletedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v7    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v8    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1827
    .restart local v0    # "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1    # "deletedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v2    # "i":I
    .restart local v6    # "userInfo$iterator":Ljava/util/Iterator;
    .restart local v7    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v8    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "userId$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1828
    .local v3, "userId":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    goto :goto_3

    .line 1806
    .end local v3    # "userId":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method private clearUserPoliciesLocked(Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v6, 0x0

    .line 4452
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 4454
    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 4455
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    .line 4456
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    .line 4457
    iput-boolean v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    .line 4458
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 4460
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4462
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearUserRestrictions(Landroid/os/UserHandle;)V

    .line 4463
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 4465
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 4464
    const/4 v7, 0x4

    .line 4465
    const/4 v8, 0x0

    .line 4463
    invoke-interface {v5, v7, v8, v6}, Landroid/content/pm/IPackageManager;->updatePermissionFlagsForAllApps(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4468
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4451
    :goto_0
    return-void

    .line 4466
    :catch_0
    move-exception v3

    .line 4468
    .local v3, "re":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 4467
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 4468
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4467
    throw v5
.end method

.method private clearUserRestrictions(Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 4474
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v2

    .line 4475
    .local v2, "userRestrictions":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, p1}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4477
    const-string/jumbo v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 4476
    invoke-static {v3}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 4478
    .local v1, "iAudioService":Landroid/media/IAudioService;
    const-string/jumbo v3, "no_adjust_volume"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4480
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4481
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 4480
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6, v3, v4}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4486
    :cond_0
    :goto_0
    const-string/jumbo v3, "no_unmute_microphone"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4488
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4489
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 4488
    const/4 v5, 0x1

    invoke-interface {v1, v5, v3, v4}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4473
    :cond_1
    :goto_1
    return-void

    .line 4490
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 4482
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private clearWipeProfileNotification()V
    .locals 2

    .prologue
    .line 3432
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3431
    return-void
.end method

.method private enableIfNecessary(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 4788
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4790
    .local v0, "ipm":Landroid/content/pm/IPackageManager;
    const v1, 0x8000

    .line 4789
    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 4792
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 4793
    const/4 v2, 0x4

    .line 4792
    if-ne v1, v2, :cond_0

    .line 4796
    const-string/jumbo v5, "DevicePolicyManager"

    .line 4795
    const/4 v2, 0x0

    .line 4796
    const/4 v3, 0x1

    move-object v1, p1

    move v4, p2

    .line 4794
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4786
    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 4798
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enforceCanSetDeviceInitializer(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 4327
    if-nez p1, :cond_0

    .line 4328
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 4329
    const-string/jumbo v1, "android.permission.MANAGE_DEVICE_ADMINS"

    .line 4328
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4331
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4332
    const-string/jumbo v1, "Trying to set device initializer but device is already provisioned."

    .line 4331
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4335
    :cond_0
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4326
    :cond_1
    return-void
.end method

.method private enforceCanSetDeviceOwner()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4716
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4717
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Trying to set the device owner, but device owner is already set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4720
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4721
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_5

    .line 4722
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4723
    return-void

    .line 4725
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 4726
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not allowed to set the device owner because there are already several users on the device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4729
    :cond_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_4

    .line 4730
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not allowed to set the device owner because there are already some accounts on the device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4733
    :cond_4
    return-void

    .line 4735
    :cond_5
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 4736
    const-string/jumbo v2, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    .line 4735
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4737
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4738
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot set the device owner if the device is already set-up"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4715
    :cond_6
    return-void
.end method

.method private enforceCanSetProfileOwner(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 4678
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4679
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    .line 4681
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 4682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted to set profile owner for invalid userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4681
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4684
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4685
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot set a profile owner on a guest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4687
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4688
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Trying to set the profile owner, but profile owner is already set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4691
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4692
    .local v0, "callingUid":I
    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_5

    .line 4693
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4694
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_4

    .line 4695
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Not allowed to set the profile owner because there are already some accounts on the profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4698
    :cond_4
    return-void

    .line 4700
    :cond_5
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 4701
    const-string/jumbo v3, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    .line 4700
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4702
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4703
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_6

    .line 4704
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot set the profile owner on a user which is already set-up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4677
    :cond_6
    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 4744
    if-gez p1, :cond_0

    .line 4745
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4747
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4748
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_1

    return-void

    .line 4749
    :cond_1
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    .line 4750
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 4751
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v3, "Must be system or have INTERACT_ACROSS_USERS_FULL permission"

    .line 4750
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4743
    :cond_2
    return-void
.end method

.method private enforceNotManagedProfile(ILjava/lang/String;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 4763
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4764
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for a managed profile. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4762
    :cond_0
    return-void
.end method

.method private enforceSystemProcess(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 4757
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 4758
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4756
    :cond_0
    return-void
.end method

.method private getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 5089
    const-string/jumbo v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5090
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 5091
    const/4 v1, 0x0

    .line 5092
    :goto_0
    new-instance v2, Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p1}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    return-object v2

    .line 5091
    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    goto :goto_0
.end method

.method private getActiveAdminWithPolicyForUidLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 1249
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1250
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1251
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz p1, :cond_2

    .line 1252
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1253
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    .line 1254
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No active admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1256
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-eq v4, p3, :cond_1

    .line 1257
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1258
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1257
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1260
    :cond_1
    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isActiveAdminWithPolicyForUserLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1261
    return-object v0

    .line 1264
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1265
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-ne v4, p3, :cond_3

    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isActiveAdminWithPolicyForUserLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1267
    return-object v0

    .line 1272
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    :cond_4
    return-object v5
.end method

.method private getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    .line 2816
    const/4 v2, 0x0

    .line 2817
    .local v2, "count":I
    const/4 v4, 0x0

    .line 2818
    .local v4, "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v4    # "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .local v6, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2819
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2820
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v7, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2821
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v7, :cond_1

    .line 2827
    if-eqz v2, :cond_2

    .line 2828
    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-le v2, v7, :cond_3

    .line 2830
    :cond_2
    :goto_1
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 2831
    move-object v4, v0

    .local v4, "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    goto :goto_0

    .line 2829
    .end local v4    # "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-lt v2, v7, :cond_1

    goto :goto_1

    .line 2835
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    return-object v4
.end method

.method private getApplicationLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 4647
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4651
    .local v6, "token":J
    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 4652
    .local v1, "handle":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 4657
    .local v5, "userContext":Landroid/content/Context;
    :try_start_1
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4658
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .line 4659
    .local v4, "result":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 4660
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4661
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 4663
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "result":Ljava/lang/CharSequence;
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 4665
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4663
    return-object v8

    .line 4653
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "handle":Landroid/os/UserHandle;
    .end local v5    # "userContext":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 4654
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string/jumbo v9, "DevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not installed for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4665
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4655
    return-object v8

    .line 4664
    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    .line 4665
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4664
    throw v8
.end method

.method private getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4232
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    .line 4233
    .local v1, "deviceOwnerPackageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4234
    return-object v6

    .line 4237
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 4238
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4239
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 4240
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4241
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4242
    return-object v0

    .line 4239
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4245
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    return-object v6
.end method

.method private getEncryptionStatus()I
    .locals 5

    .prologue
    .line 3859
    const-string/jumbo v1, "ro.crypto.state"

    const-string/jumbo v4, "unsupported"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3860
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3861
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3863
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 3864
    const/4 v1, 0x3

    .line 3867
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3863
    return v1

    .line 3865
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 3866
    :catchall_0
    move-exception v1

    .line 3867
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3866
    throw v1

    .line 3869
    .end local v2    # "token":J
    :cond_1
    const-string/jumbo v1, "unencrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3870
    const/4 v1, 0x1

    return v1

    .line 3872
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private getLockTaskPackagesLocked(I)Ljava/util/List;
    .locals 2
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5983
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 5984
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    return-object v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1200
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2387
    const-wide/16 v8, 0x0

    .line 2389
    .local v8, "timeout":J
    if-eqz p1, :cond_1

    .line 2390
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 2391
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_0

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    :goto_0
    return-wide v12

    .line 2387
    :cond_0
    const-wide/16 v12, 0x0

    .line 2391
    goto :goto_0

    .line 2394
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2395
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "userInfo$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2396
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2397
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2398
    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 2399
    iget-object v11, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2400
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_3

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_4

    .line 2401
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_4

    .line 2402
    :cond_3
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2398
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2406
    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    return-wide v8
.end method

.method private getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v6, 0x0

    .line 4615
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v5, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v4

    .line 4616
    :goto_0
    if-nez v4, :cond_1

    .line 4617
    return-object v6

    .line 4615
    :cond_0
    const/4 v4, 0x0

    .local v4, "profileOwner":Landroid/content/ComponentName;
    goto :goto_0

    .line 4619
    .end local v4    # "profileOwner":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4620
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4621
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 4622
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4623
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4624
    return-object v0

    .line 4621
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4627
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    return-object v6
.end method

.method private getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 4769
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4771
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4773
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4771
    return-object v2

    .line 4772
    :catchall_0
    move-exception v2

    .line 4773
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4772
    throw v2
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 1191
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 1192
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1193
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1195
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handlePackagesChanged(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 998
    const/4 v7, 0x0

    .line 1000
    .local v7, "removed":Z
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 1001
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1002
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    monitor-enter p0

    .line 1003
    :try_start_0
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 1004
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    .local v0, "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_start_1
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "adminPackage":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1010
    :cond_0
    const/4 v8, 0x0

    invoke-interface {v4, v1, v8, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1011
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v4, v8, v9, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    if-nez v8, :cond_2

    .line 1013
    :cond_1
    const/4 v7, 0x1

    .line 1014
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1015
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    .end local v1    # "adminPackage":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1022
    .end local v0    # "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    if-eqz v7, :cond_4

    .line 1023
    :try_start_2
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1024
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1025
    iget v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1028
    :cond_4
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 1029
    if-eqz p1, :cond_5

    .line 1030
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    .line 1028
    if-eqz v8, :cond_6

    .line 1034
    :cond_5
    :try_start_3
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    const/4 v9, 0x0

    .line 1033
    invoke-interface {v4, v8, v9, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-nez v8, :cond_6

    .line 1035
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    .line 1036
    iget v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_2
    monitor-exit p0

    .line 997
    return-void

    .line 1002
    .end local v3    # "i":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1038
    .restart local v3    # "i":I
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 1018
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catch_1
    move-exception v6

    .local v6, "re":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private handlePasswordExpirationNotification(I)V
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    .line 1833
    monitor-enter p0

    .line 1834
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1836
    .local v4, "now":J
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 1837
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "ui$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 1838
    .local v8, "ui":Landroid/content/pm/UserInfo;
    iget v6, v8, Landroid/content/pm/UserInfo;->id:I

    .line 1839
    .local v6, "profileUserHandle":I
    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1840
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1841
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 1842
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1843
    iget-object v10, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1844
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1845
    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 1846
    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/32 v12, 0x19bfcc00

    sub-long/2addr v10, v12

    cmp-long v10, v4, v10

    if-ltz v10, :cond_1

    .line 1847
    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 1849
    const-string/jumbo v10, "android.app.action.ACTION_PASSWORD_EXPIRING"

    .line 1848
    invoke-virtual {p0, v0, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1842
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1854
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "profileUserHandle":I
    .end local v8    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1832
    return-void

    .line 1833
    .end local v4    # "now":J
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v9    # "ui$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method private hasUserSetupCompleted(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    .line 4502
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 4503
    return v1

    .line 4505
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 4507
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    :cond_1
    return v1
.end method

.method private isActiveAdminWithPolicyForUserLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;II)Z
    .locals 7
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "reqPolicy"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1277
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v0

    .line 1278
    .local v0, "ownsDevice":Z
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1279
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1280
    iget-object v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1279
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1281
    :goto_0
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1282
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .line 1284
    .local v1, "ownsInitialization":Z
    :goto_1
    const/4 v3, -0x2

    if-ne p2, v3, :cond_5

    .line 1285
    if-nez p3, :cond_0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1286
    :cond_0
    if-eqz v0, :cond_9

    .line 1285
    if-eqz v2, :cond_9

    .line 1287
    :cond_1
    return v6

    .line 1278
    .end local v1    # "ownsInitialization":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "ownsProfile":Z
    goto :goto_0

    .line 1282
    .end local v2    # "ownsProfile":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "ownsInitialization":Z
    goto :goto_1

    .line 1281
    .end local v1    # "ownsInitialization":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "ownsInitialization":Z
    goto :goto_1

    .line 1289
    :cond_5
    const/4 v3, -0x1

    if-ne p2, v3, :cond_8

    .line 1290
    if-nez p3, :cond_6

    if-nez v0, :cond_7

    :cond_6
    if-nez v2, :cond_7

    if-eqz v1, :cond_9

    .line 1292
    :cond_7
    return v6

    .line 1295
    :cond_8
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1296
    return v6

    .line 1299
    :cond_9
    return v5
.end method

.method private isCallerDelegatedCertInstaller()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 3126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3127
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3128
    .local v4, "userHandle":I
    monitor-enter p0

    .line 3129
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 3130
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    monitor-exit p0

    .line 3131
    return v5

    .line 3135
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 3136
    iget-object v7, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    .line 3135
    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 3137
    .local v3, "uid":I
    if-ne v3, v0, :cond_1

    const/4 v5, 0x1

    :cond_1
    monitor-exit p0

    return v5

    .line 3138
    .end local v3    # "uid":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    monitor-exit p0

    .line 3139
    return v5

    .line 3128
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private isCallerDeviceOwnerOrInitializer(I)Z
    .locals 6
    .param p1, "callerUid"    # I

    .prologue
    const/4 v3, 0x0

    .line 6397
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 6398
    .local v1, "pkgs":[Ljava/lang/String;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v1, v2

    .line 6399
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6400
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 6398
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6403
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private isEncryptionSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3848
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 3108
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3109
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z
    .locals 2
    .param p0, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p1, "minPasswordQuality"    # I

    .prologue
    const/4 v1, 0x0

    .line 6353
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v0, p1, :cond_0

    .line 6354
    return v1

    .line 6356
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, v1}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v0

    return v0
.end method

.method private isManagedProfile(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 4778
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4780
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4782
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4780
    return v2

    .line 4781
    :catchall_0
    move-exception v2

    .line 4782
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4781
    throw v2
.end method

.method private isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5711
    const/16 v2, 0x2000

    invoke-interface {p1, p2, v2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5713
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 5714
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5715
    const-string/jumbo v3, " is not present on this device"

    .line 5714
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5717
    :cond_0
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private loadSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)V
    .locals 31
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .param p2, "userHandle"    # I

    .prologue
    .line 1546
    invoke-static/range {p2 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v16

    .line 1547
    .local v16, "journal":Lcom/android/internal/util/JournaledFile;
    const/16 v22, 0x0

    .line 1548
    .local v22, "stream":Ljava/io/FileInputStream;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v13

    .line 1550
    .local v13, "file":Ljava/io/File;
    :try_start_0
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_d

    .line 1551
    .end local v22    # "stream":Ljava/io/FileInputStream;
    .local v23, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    .line 1552
    .local v19, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v28 .. v28}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1555
    :cond_0
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v25

    .local v25, "type":I
    const/16 v28, 0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 1556
    const/16 v28, 0x2

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 1558
    :cond_1
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 1559
    .local v24, "tag":Ljava/lang/String;
    const-string/jumbo v28, "policies"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 1560
    new-instance v28, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1561
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Settings do not start with policies tag: found "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1560
    invoke-direct/range {v28 .. v29}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1645
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/NullPointerException;
    move-object/from16 v22, v23

    .line 1646
    .end local v23    # "stream":Ljava/io/FileInputStream;
    :goto_0
    const-string/jumbo v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "failed parsing "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v22, :cond_2

    .line 1660
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1667
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1673
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1675
    .local v14, "identity":J
    :try_start_3
    new-instance v27, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1676
    .local v27, "utils":Lcom/android/internal/widget/LockPatternUtils;
    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v28

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 1677
    const-string/jumbo v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Active password quality 0x"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1678
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v30

    .line 1677
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1679
    const-string/jumbo v30, " does not match actual quality 0x"

    .line 1677
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1680
    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v30

    .line 1677
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1682
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1683
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1684
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1685
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1686
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1687
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1688
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1691
    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1694
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1695
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1696
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1697
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->addDeviceInitializerToLockTaskPackagesLocked(I)V

    .line 1698
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskPackagesLocked(Ljava/util/List;I)V

    .line 1699
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 1700
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setStatusBarDisabledInternal(ZI)Z

    .line 1545
    :cond_4
    return-void

    .line 1565
    .end local v14    # "identity":J
    .end local v27    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v24    # "tag":Ljava/lang/String;
    .restart local v25    # "type":I
    :cond_5
    :try_start_4
    const-string/jumbo v28, "permission-provider"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1566
    .local v21, "permissionProvider":Ljava/lang/String;
    if-eqz v21, :cond_6

    .line 1567
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    .line 1569
    :cond_6
    const-string/jumbo v28, "setup-complete"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1570
    .local v26, "userSetupComplete":Ljava/lang/String;
    if-eqz v26, :cond_7

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 1571
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    .line 1573
    :cond_7
    const-string/jumbo v28, "permission-policy"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1574
    .local v20, "permissionPolicy":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_8

    .line 1575
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    .line 1578
    :cond_8
    const-string/jumbo v28, "delegated-cert-installer"

    .line 1577
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    .line 1580
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v25

    .line 1581
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    .line 1582
    .local v18, "outerDepth":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->clear()V

    .line 1583
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 1584
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->clear()V

    .line 1585
    :cond_9
    :goto_3
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v25

    const/16 v28, 0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_12

    .line 1586
    const/16 v28, 0x3

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v18

    if-le v0, v1, :cond_12

    .line 1587
    :cond_a
    const/16 v28, 0x3

    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    const/16 v28, 0x4

    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    .line 1590
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 1591
    const-string/jumbo v28, "admin"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 1592
    const-string/jumbo v28, "name"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v17

    .line 1595
    .local v17, "name":Ljava/lang/String;
    :try_start_5
    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v28

    .line 1594
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v5

    .line 1602
    .local v5, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v5, :cond_9

    .line 1603
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1604
    .local v4, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1605
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_3

    .line 1607
    .end local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v5    # "dai":Landroid/app/admin/DeviceAdminInfo;
    :catch_1
    move-exception v11

    .line 1608
    .local v11, "e":Ljava/lang/RuntimeException;
    :try_start_6
    const-string/jumbo v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Failed loading admin "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_3

    .line 1647
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "permissionPolicy":Ljava/lang/String;
    .end local v21    # "permissionProvider":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    .end local v26    # "userSetupComplete":Ljava/lang/String;
    :catch_2
    move-exception v10

    .local v10, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v22, v23

    .line 1648
    .end local v23    # "stream":Ljava/io/FileInputStream;
    :goto_4
    const-string/jumbo v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "failed parsing "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1610
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .restart local v18    # "outerDepth":I
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "permissionPolicy":Ljava/lang/String;
    .restart local v21    # "permissionProvider":Ljava/lang/String;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v24    # "tag":Ljava/lang/String;
    .restart local v25    # "type":I
    .restart local v26    # "userSetupComplete":Ljava/lang/String;
    :cond_b
    :try_start_7
    const-string/jumbo v28, "failed-password-attempts"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 1612
    const-string/jumbo v28, "value"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1611
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_3

    .line 1649
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "permissionPolicy":Ljava/lang/String;
    .end local v21    # "permissionProvider":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    .end local v26    # "userSetupComplete":Ljava/lang/String;
    :catch_3
    move-exception v12

    .local v12, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v22, v23

    .line 1650
    .end local v23    # "stream":Ljava/io/FileInputStream;
    :goto_5
    const-string/jumbo v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "failed parsing "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1613
    .end local v12    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v18    # "outerDepth":I
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "permissionPolicy":Ljava/lang/String;
    .restart local v21    # "permissionProvider":Ljava/lang/String;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v24    # "tag":Ljava/lang/String;
    .restart local v25    # "type":I
    .restart local v26    # "userSetupComplete":Ljava/lang/String;
    :cond_c
    :try_start_8
    const-string/jumbo v28, "password-owner"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 1615
    const-string/jumbo v28, "value"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1614
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    goto/16 :goto_3

    .line 1651
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "permissionPolicy":Ljava/lang/String;
    .end local v21    # "permissionProvider":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    .end local v26    # "userSetupComplete":Ljava/lang/String;
    :catch_4
    move-exception v6

    .local v6, "e":Ljava/io/FileNotFoundException;
    move-object/from16 v22, v23

    .end local v23    # "stream":Ljava/io/FileInputStream;
    .local v22, "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1616
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v22    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "outerDepth":I
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "permissionPolicy":Ljava/lang/String;
    .restart local v21    # "permissionProvider":Ljava/lang/String;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v24    # "tag":Ljava/lang/String;
    .restart local v25    # "type":I
    .restart local v26    # "userSetupComplete":Ljava/lang/String;
    :cond_d
    const-string/jumbo v28, "active-password"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 1618
    const-string/jumbo v28, "quality"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1617
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1620
    const-string/jumbo v28, "length"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1619
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1622
    const-string/jumbo v28, "uppercase"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1621
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1624
    const-string/jumbo v28, "lowercase"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1623
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1626
    const-string/jumbo v28, "letters"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1625
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1628
    const-string/jumbo v28, "numeric"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1627
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1630
    const-string/jumbo v28, "symbols"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1629
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1632
    const-string/jumbo v28, "nonletter"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1631
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_3

    .line 1653
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "permissionPolicy":Ljava/lang/String;
    .end local v21    # "permissionProvider":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    .end local v26    # "userSetupComplete":Ljava/lang/String;
    :catch_5
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    move-object/from16 v22, v23

    .line 1654
    .end local v23    # "stream":Ljava/io/FileInputStream;
    :goto_6
    const-string/jumbo v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "failed parsing "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1633
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v18    # "outerDepth":I
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "permissionPolicy":Ljava/lang/String;
    .restart local v21    # "permissionProvider":Ljava/lang/String;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v24    # "tag":Ljava/lang/String;
    .restart local v25    # "type":I
    .restart local v26    # "userSetupComplete":Ljava/lang/String;
    :cond_e
    :try_start_9
    const-string/jumbo v28, "lock-task-component"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 1634
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    move-object/from16 v28, v0

    const-string/jumbo v29, "name"

    const/16 v30, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_3

    .line 1655
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "permissionPolicy":Ljava/lang/String;
    .end local v21    # "permissionProvider":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    .end local v26    # "userSetupComplete":Ljava/lang/String;
    :catch_6
    move-exception v8

    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v22, v23

    .line 1656
    .end local v23    # "stream":Ljava/io/FileInputStream;
    :goto_7
    const-string/jumbo v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "failed parsing "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1635
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v18    # "outerDepth":I
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "permissionPolicy":Ljava/lang/String;
    .restart local v21    # "permissionProvider":Ljava/lang/String;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v24    # "tag":Ljava/lang/String;
    .restart local v25    # "type":I
    .restart local v26    # "userSetupComplete":Ljava/lang/String;
    :cond_f
    :try_start_a
    const-string/jumbo v28, "statusbar"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 1637
    const-string/jumbo v28, "disabled"

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1636
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    goto/16 :goto_3

    .line 1638
    :cond_10
    const-string/jumbo v28, "do-not-ask-credentials-on-boot"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 1639
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    goto/16 :goto_3

    .line 1641
    :cond_11
    const-string/jumbo v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Unknown tag: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_3

    :cond_12
    move-object/from16 v22, v23

    .end local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v22    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1662
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "permissionPolicy":Ljava/lang/String;
    .end local v21    # "permissionProvider":Ljava/lang/String;
    .end local v22    # "stream":Ljava/io/FileInputStream;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "type":I
    .end local v26    # "userSetupComplete":Ljava/lang/String;
    :catch_7
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 1690
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v14    # "identity":J
    :catchall_0
    move-exception v28

    .line 1691
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1690
    throw v28

    .line 1645
    .end local v14    # "identity":J
    .local v22, "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v9

    .restart local v9    # "e":Ljava/lang/NullPointerException;
    goto/16 :goto_0

    .line 1647
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :catch_9
    move-exception v10

    .restart local v10    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_4

    .line 1649
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :catch_a
    move-exception v12

    .restart local v12    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_5

    .line 1651
    .end local v12    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_b
    move-exception v6

    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_1

    .line 1653
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_c
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_6

    .line 1655
    .end local v7    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v8

    .restart local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_7
.end method

.method private lockNowUnchecked()V
    .locals 8

    .prologue
    .line 3092
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3095
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3096
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3095
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 3098
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 3099
    const/4 v4, 0x2

    const/4 v5, -0x1

    .line 3098
    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 3100
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3103
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3091
    :goto_0
    return-void

    .line 3101
    :catch_0
    move-exception v0

    .line 3103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3102
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 3103
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3102
    throw v1
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userHandle"    # I

    .prologue
    .line 1421
    if-nez p0, :cond_0

    .line 1422
    const-string/jumbo v0, "/data/system/device_policies.xml"

    .line 1425
    .local v0, "base":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .line 1423
    .end local v0    # "base":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_0
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 3182
    const-string/jumbo v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 3183
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private removeDeviceInitializerFromLockTaskPackages(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 6256
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceInitializer()Ljava/lang/String;

    move-result-object v0

    .line 6257
    .local v0, "deviceInitializerPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 6258
    return-void

    .line 6261
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockTaskPackagesLocked(I)Ljava/util/List;

    move-result-object v1

    .line 6262
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6263
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setLockTaskPackagesLocked(ILjava/util/List;)V

    .line 6255
    :cond_1
    return-void
.end method

.method private resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const/4 v4, 0x0

    .line 3702
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3703
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3704
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3705
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_0

    .line 3706
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3707
    return-void

    .line 3703
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3711
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-direct {p0, v4, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3701
    return-void
.end method

.method private saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "proxySpec"    # Ljava/lang/String;
    .param p2, "exclusionList"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3715
    if-nez p2, :cond_0

    .line 3716
    const-string/jumbo p2, ""

    .line 3718
    :cond_0
    if-nez p1, :cond_1

    .line 3719
    const-string/jumbo p1, ""

    .line 3722
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3723
    const-string/jumbo v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3724
    .local v0, "data":[Ljava/lang/String;
    const/16 v2, 0x1f90

    .line 3725
    .local v2, "proxyPort":I
    array-length v5, v0

    if-le v5, v7, :cond_2

    .line 3727
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3730
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 3731
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3733
    .local v4, "res":Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/ProxyInfo;

    aget-object v5, v0, v6

    invoke-direct {v3, v5, v2, p2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3734
    .local v3, "proxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3735
    const-string/jumbo v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid proxy properties, ignoring: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3736
    return-void

    .line 3738
    :cond_3
    const-string/jumbo v5, "global_http_proxy_host"

    aget-object v6, v0, v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3739
    const-string/jumbo v5, "global_http_proxy_port"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3740
    const-string/jumbo v5, "global_http_proxy_exclusion_list"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3714
    return-void

    .line 3728
    .end local v3    # "proxyProperties":Landroid/net/ProxyInfo;
    .end local v4    # "res":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private saveSettingsLocked(I)V
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    .line 1429
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v8

    .line 1430
    .local v8, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v6

    .line 1431
    .local v6, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v9, 0x0

    .line 1433
    .local v9, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    .local v10, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1435
    .local v7, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1436
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1438
    const-string/jumbo v11, "policies"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1439
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    if-eqz v11, :cond_0

    .line 1440
    const-string/jumbo v11, "permission-provider"

    .line 1441
    iget-object v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    .line 1440
    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1443
    :cond_0
    iget-boolean v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-eqz v11, :cond_1

    .line 1444
    const-string/jumbo v11, "setup-complete"

    .line 1445
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    .line 1444
    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1447
    :cond_1
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    if-eqz v11, :cond_2

    .line 1448
    const-string/jumbo v11, "permission-policy"

    .line 1449
    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 1448
    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1451
    :cond_2
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 1452
    const-string/jumbo v11, "delegated-cert-installer"

    .line 1453
    iget-object v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    .line 1452
    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1456
    :cond_3
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1457
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 1458
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1459
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_4

    .line 1460
    const-string/jumbo v11, "admin"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1461
    const-string/jumbo v11, "name"

    iget-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v12}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1462
    invoke-virtual {v1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1463
    const-string/jumbo v11, "admin"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1457
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1467
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v11, :cond_6

    .line 1468
    const-string/jumbo v11, "password-owner"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1469
    const-string/jumbo v11, "value"

    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1470
    const-string/jumbo v11, "password-owner"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1473
    :cond_6
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v11, :cond_7

    .line 1474
    const-string/jumbo v11, "failed-password-attempts"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1475
    const-string/jumbo v11, "value"

    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1476
    const-string/jumbo v11, "failed-password-attempts"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1479
    :cond_7
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-nez v11, :cond_8

    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-eqz v11, :cond_a

    .line 1483
    :cond_8
    :goto_1
    const-string/jumbo v11, "active-password"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1484
    const-string/jumbo v11, "quality"

    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1485
    const-string/jumbo v11, "length"

    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1486
    const-string/jumbo v11, "uppercase"

    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1487
    const-string/jumbo v11, "lowercase"

    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1488
    const-string/jumbo v11, "letters"

    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1489
    const-string/jumbo v11, "numeric"

    .line 1490
    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1489
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1491
    const-string/jumbo v11, "symbols"

    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1492
    const-string/jumbo v11, "nonletter"

    iget v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1493
    const-string/jumbo v11, "active-password"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1496
    :cond_9
    const/4 v5, 0x0

    :goto_2
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_b

    .line 1497
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1498
    .local v2, "component":Ljava/lang/String;
    const-string/jumbo v11, "lock-task-component"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1499
    const-string/jumbo v11, "name"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1500
    const-string/jumbo v11, "lock-task-component"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1496
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1480
    .end local v2    # "component":Ljava/lang/String;
    :cond_a
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-nez v11, :cond_8

    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-nez v11, :cond_8

    .line 1481
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-nez v11, :cond_8

    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-nez v11, :cond_8

    .line 1482
    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-nez v11, :cond_8

    iget v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eqz v11, :cond_9

    goto/16 :goto_1

    .line 1503
    :cond_b
    iget-boolean v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    if-eqz v11, :cond_c

    .line 1504
    const-string/jumbo v11, "statusbar"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1505
    const-string/jumbo v11, "disabled"

    iget-boolean v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v7, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1506
    const-string/jumbo v11, "statusbar"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1509
    :cond_c
    iget-boolean v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    if-eqz v11, :cond_d

    .line 1510
    const-string/jumbo v11, "do-not-ask-credentials-on-boot"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1511
    const-string/jumbo v11, "do-not-ask-credentials-on-boot"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1514
    :cond_d
    const-string/jumbo v11, "policies"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1516
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1517
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 1518
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1519
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1520
    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 1521
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendChangedNotification(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v9, v10

    .line 1428
    .end local v0    # "N":I
    .end local v5    # "i":I
    .end local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    :goto_3
    return-void

    .line 1522
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 1524
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/io/IOException;
    :goto_4
    if-eqz v9, :cond_e

    .line 1525
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1530
    :cond_e
    :goto_5
    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_3

    .line 1527
    :catch_1
    move-exception v4

    .local v4, "ex":Ljava/io/IOException;
    goto :goto_5

    .line 1522
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .local v9, "stream":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method private sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1353
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 1354
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ui$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1355
    .local v2, "ui":Landroid/content/pm/UserInfo;
    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1356
    .local v0, "id":I
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V

    goto :goto_0

    .line 1352
    .end local v0    # "id":I
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private sendChangedNotification(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1535
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1536
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1537
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1539
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1534
    return-void

    .line 1540
    :catchall_0
    move-exception v3

    .line 1541
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1540
    throw v3
.end method

.method private sendPrivateKeyAliasResponse(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "responseBinder"    # Landroid/os/IBinder;

    .prologue
    .line 3289
    invoke-static {p2}, Landroid/security/IKeyChainAliasCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainAliasCallback;

    move-result-object v0

    .line 3290
    .local v0, "keyChainAliasResponse":Landroid/security/IKeyChainAliasCallback;
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/security/IKeyChainAliasCallback;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3287
    return-void
.end method

.method private sendWipeProfileNotification()V
    .locals 5

    .prologue
    .line 3420
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040176

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3421
    .local v0, "contentText":Ljava/lang/String;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 3422
    const v3, 0x108008a

    .line 3421
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 3423
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040173

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3421
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 3425
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1060070

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 3421
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 3426
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    .line 3421
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 3428
    .local v1, "notification":Landroid/app/Notification;
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3419
    return-void
.end method

.method private setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V
    .locals 14
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I
    .param p4, "onEnableData"    # Landroid/os/Bundle;

    .prologue
    .line 1961
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 1962
    const-string/jumbo v12, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v13, 0x0

    .line 1961
    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1965
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v9

    .line 1966
    .local v9, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v6

    .line 1967
    .local v6, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v6, :cond_0

    .line 1968
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Bad admin: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1970
    :cond_0
    monitor-enter p0

    .line 1971
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .line 1973
    .local v4, "ident":J
    if-nez p2, :cond_1

    .line 1974
    :try_start_1
    move/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 1975
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "Admin is already added"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1997
    :catchall_0
    move-exception v11

    .line 1998
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1997
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1970
    .end local v4    # "ident":J
    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1977
    .restart local v4    # "ident":J
    :cond_1
    :try_start_3
    new-instance v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v7, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1978
    .local v7, "newAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    const/4 v10, -0x1

    .line 1980
    .local v10, "replaceIndex":I
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1981
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1982
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1983
    .local v8, "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1984
    move v10, v3

    .line 1988
    .end local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    .line 1989
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1990
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enableIfNecessary(Ljava/lang/String;I)V

    .line 1994
    :goto_1
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1995
    const-string/jumbo v11, "android.app.action.DEVICE_ADMIN_ENABLED"

    .line 1996
    const/4 v12, 0x0

    .line 1995
    move-object/from16 v0, p4

    invoke-virtual {p0, v7, v11, v0, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1998
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 1960
    return-void

    .line 1981
    .restart local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1992
    .end local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    :try_start_5
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private setDoNotAskCredentialsOnBoot()V
    .locals 2

    .prologue
    .line 2983
    monitor-enter p0

    .line 2984
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 2985
    .local v0, "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    if-nez v1, :cond_0

    .line 2986
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    .line 2987
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 2982
    return-void

    .line 2983
    .end local v0    # "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setEncryptionRequested(Z)V
    .locals 0
    .param p1, "encrypt"    # Z

    .prologue
    .line 3879
    return-void
.end method

.method private setLockTaskPackagesLocked(ILjava/util/List;)V
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5960
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 5961
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 5964
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 5965
    invoke-direct {p0, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskPackagesLocked(Ljava/util/List;I)V

    .line 5959
    return-void
.end method

.method private setStatusBarDisabledInternal(ZI)Z
    .locals 8
    .param p1, "disabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 6190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6193
    .local v4, "ident":J
    :try_start_0
    const-string/jumbo v6, "statusbar"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 6192
    invoke-static {v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 6194
    .local v3, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_2

    .line 6195
    if-eqz p1, :cond_0

    const/high16 v1, 0x2070000

    .line 6196
    .local v1, "flags1":I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 6197
    .local v2, "flags2":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mToken:Landroid/os/Binder;

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v1, v6, v7, p2}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 6198
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mToken:Landroid/os/Binder;

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v2, v6, v7, p2}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6199
    const/4 v6, 0x1

    .line 6204
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6199
    return v6

    .line 6195
    .end local v1    # "flags1":I
    .end local v2    # "flags2":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "flags1":I
    goto :goto_0

    .line 6196
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "flags2":I
    goto :goto_1

    .line 6204
    .end local v1    # "flags1":I
    .end local v2    # "flags2":I
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6206
    .end local v3    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_2
    const/4 v6, 0x0

    return v6

    .line 6201
    :catch_0
    move-exception v0

    .line 6202
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v6, "DevicePolicyManagerService"

    const-string/jumbo v7, "Failed to disable the status bar"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6204
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 6203
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 6204
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6203
    throw v6
.end method

.method private updateDeviceOwnerLocked()V
    .locals 5

    .prologue
    .line 1717
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1718
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1720
    .local v2, "ident":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/app/IActivityManager;->updateDeviceOwner(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1724
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1716
    :goto_0
    return-void

    .line 1721
    :catch_0
    move-exception v1

    .line 1724
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1723
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 1724
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1723
    throw v4
.end method

.method private updateLockTaskPackagesLocked(Ljava/util/List;I)V
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1705
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1706
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1708
    .local v2, "ident":J
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-interface {v0, p2, v4}, Landroid/app/IActivityManager;->updateLockTaskPackages(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1712
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1704
    :goto_0
    return-void

    .line 1709
    :catch_0
    move-exception v1

    .line 1712
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1711
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 1712
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1711
    throw v4
.end method

.method private updatePasswordExpirationsLocked(I)V
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    .line 3520
    iget-object v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v12, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 3521
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "userInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 3522
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget v6, v10, Landroid/content/pm/UserInfo;->id:I

    .line 3523
    .local v6, "profileId":I
    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 3524
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v12, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3525
    .local v0, "N":I
    if-lez v0, :cond_2

    .line 3526
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 3527
    iget-object v12, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3528
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3529
    iget-wide v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 3530
    .local v8, "timeout":J
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long v2, v8, v12

    .line 3531
    .local v2, "expiration":J
    :goto_2
    iput-wide v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 3526
    .end local v2    # "expiration":J
    .end local v8    # "timeout":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3530
    .restart local v8    # "timeout":J
    :cond_1
    const-wide/16 v2, 0x0

    .restart local v2    # "expiration":J
    goto :goto_2

    .line 3535
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "expiration":J
    .end local v4    # "i":I
    .end local v8    # "timeout":J
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    goto :goto_0

    .line 3519
    .end local v0    # "N":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "profileId":I
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    return-void
.end method

.method private updateScreenCaptureDisabledInWindowManager(IZ)V
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 3932
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3934
    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->setScreenCaptureDisabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3938
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3931
    :goto_0
    return-void

    .line 3935
    :catch_0
    move-exception v0

    .line 3936
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "DevicePolicyManagerService"

    const-string/jumbo v4, "Unable to notify WindowManager."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3938
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3937
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 3938
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3937
    throw v1
.end method

.method static validateQualityConstant(I)V
    .locals 3
    .param p0, "quality"    # I

    .prologue
    .line 1729
    sparse-switch p0, :sswitch_data_0

    .line 1740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid quality constant: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1741
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1738
    :sswitch_0
    return-void

    .line 1729
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private wipeDataNoLock(ZLjava/lang/String;)V
    .locals 4
    .param p1, "wipeExtRequested"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3328
    if-eqz p1, :cond_0

    .line 3329
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 3330
    const-string/jumbo v3, "storage"

    .line 3329
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 3331
    .local v1, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .line 3334
    .end local v1    # "sm":Landroid/os/storage/StorageManager;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3327
    :goto_0
    return-void

    .line 3335
    :catch_0
    move-exception v0

    .line 3336
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DevicePolicyManagerService"

    const-string/jumbo v3, "Failed requesting data wipe"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private wipeDeviceNoLock(ZILjava/lang/String;)V
    .locals 4
    .param p1, "wipeExtRequested"    # Z
    .param p2, "userHandle"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 3388
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3390
    .local v0, "ident":J
    if-nez p2, :cond_0

    .line 3391
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDataNoLock(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3415
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3387
    return-void

    .line 3393
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;

    invoke-direct {v3, p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3414
    :catchall_0
    move-exception v2

    .line 3415
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3414
    throw v2
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .prologue
    .line 5002
    const-string/jumbo v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5003
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 5004
    .local v3, "callingUserId":I
    monitor-enter p0

    .line 5005
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5007
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 5008
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 5010
    .local v10, "id":J
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    .line 5011
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5012
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    .line 5011
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    .line 5014
    :cond_0
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    .line 5015
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 5016
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p2

    move v8, v3

    .line 5015
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5021
    :cond_1
    :try_start_2
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    .line 5001
    return-void

    .line 5018
    :catch_0
    move-exception v12

    .line 5021
    .local v12, "re":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 5004
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "id":J
    .end local v12    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 5020
    .restart local v0    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v10    # "id":J
    :catchall_1
    move-exception v1

    .line 5021
    :try_start_4
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5020
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2314
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2315
    .local v4, "userId":I
    const/4 v1, 0x0

    .line 2317
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 2319
    const/4 v5, -0x1

    .line 2318
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2320
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-nez v5, :cond_0

    .line 2321
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 2323
    :cond_0
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 2324
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2325
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2327
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    .line 2331
    if-eqz v1, :cond_2

    .line 2332
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    invoke-static {v5, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->-wrap0(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    .line 2333
    const/4 v5, 0x1

    return v5

    .line 2317
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    throw v5

    .line 2336
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v5, 0x0

    return v5

    .line 2317
    .restart local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 4847
    const-string/jumbo v5, "ComponentName is null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4848
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 4849
    .local v4, "userHandle":I
    monitor-enter p0

    .line 4850
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4852
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 4853
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 4855
    .local v0, "id":J
    :try_start_1
    invoke-interface {v2, p2, p3, v4}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4859
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    .line 4846
    return-void

    .line 4856
    :catch_0
    move-exception v3

    .line 4859
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4849
    .end local v0    # "id":J
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 4858
    .restart local v0    # "id":J
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_1
    move-exception v5

    .line 4859
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4858
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/IBinder;

    .prologue
    .line 3248
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v5, 0x3e8

    if-eq v2, v5, :cond_0

    .line 3249
    return-void

    .line 3252
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 3254
    .local v4, "caller":Landroid/os/UserHandle;
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v11

    .line 3255
    .local v11, "aliasChooser":Landroid/content/ComponentName;
    if-nez v11, :cond_1

    invoke-virtual {v4}, Landroid/os/UserHandle;->isOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3256
    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v12

    .line 3257
    .local v12, "deviceOwnerAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v12, :cond_1

    .line 3258
    iget-object v2, v12, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 3261
    .end local v12    # "deviceOwnerAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    if-nez v11, :cond_2

    .line 3262
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendPrivateKeyAliasResponse(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3263
    return-void

    .line 3266
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3267
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3268
    const-string/jumbo v2, "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

    move/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3269
    const-string/jumbo v2, "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3270
    const-string/jumbo v2, "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

    move-object/from16 v0, p3

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3271
    const-string/jumbo v2, "android.app.extra.CHOOSE_PRIVATE_KEY_RESPONSE"

    move-object/from16 v0, p4

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 3273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3275
    .local v14, "id":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v6, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/IBinder;)V

    const/4 v5, 0x0

    .line 3281
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3275
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3283
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3246
    return-void

    .line 3282
    :catchall_0
    move-exception v2

    .line 3283
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3282
    throw v2
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5028
    const-string/jumbo v5, "ComponentName is null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5029
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5030
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 5031
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5032
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 5033
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 5036
    .local v2, "id":J
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 5040
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v6, v5}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5044
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    .line 5027
    return-void

    .line 5041
    :catch_0
    move-exception v4

    .line 5044
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 5030
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "id":J
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 5043
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v2    # "id":J
    :catchall_1
    move-exception v5

    .line 5044
    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5043
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public clearDeviceInitializer(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4379
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4380
    return-void

    .line 4382
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4384
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4386
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 4387
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Admin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4388
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4391
    :cond_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4392
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4396
    :cond_2
    monitor-enter p0

    .line 4397
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 4399
    .local v2, "ident":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_3

    .line 4400
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->clearDeviceInitializer()V

    .line 4401
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4404
    :cond_3
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 4378
    return-void

    .line 4393
    .end local v2    # "ident":J
    :cond_4
    new-instance v1, Ljava/lang/SecurityException;

    .line 4394
    const-string/jumbo v4, "clearDeviceInitializer can only be called by the device initializer/owner"

    .line 4393
    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4403
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v1

    .line 4404
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4403
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4396
    .end local v2    # "ident":J
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public clearDeviceOwner(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4250
    const-string/jumbo v6, "packageName is null"

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4252
    :try_start_0
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    .line 4253
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-eq v3, v6, :cond_0

    .line 4254
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Invalid packageName"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4256
    .end local v3    # "uid":I
    :catch_0
    move-exception v0

    .line 4257
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 4259
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "uid":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4260
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "clearDeviceOwner can only be called by the device owner"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4262
    :cond_1
    monitor-enter p0

    .line 4263
    :try_start_1
    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearUserPoliciesLocked(Landroid/os/UserHandle;)V

    .line 4264
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v6, :cond_2

    .line 4265
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v6}, Lcom/android/server/devicepolicy/DeviceOwner;->clearDeviceOwner()V

    .line 4266
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v6}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 4267
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateDeviceOwnerLocked()V

    .line 4269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    .line 4272
    .local v4, "ident":J
    :try_start_2
    const-string/jumbo v6, "backup"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 4271
    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 4273
    .local v2, "ibm":Landroid/app/backup/IBackupManager;
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v2, v6, v7}, Landroid/app/backup/IBackupManager;->setBackupServiceActive(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4277
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v2    # "ibm":Landroid/app/backup/IBackupManager;
    .end local v4    # "ident":J
    :cond_2
    monitor-exit p0

    .line 4249
    return-void

    .line 4274
    .restart local v4    # "ident":J
    :catch_1
    move-exception v1

    .line 4275
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Failed activating backup service."

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4276
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 4277
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4276
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4262
    .end local v4    # "ident":J
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4866
    const-string/jumbo v5, "ComponentName is null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4867
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 4868
    .local v4, "userHandle":I
    monitor-enter p0

    .line 4869
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4871
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 4872
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 4874
    .local v0, "id":J
    :try_start_1
    invoke-interface {v2, p2, v4}, Landroid/content/pm/IPackageManager;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4878
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    .line 4865
    return-void

    .line 4875
    :catch_0
    move-exception v3

    .line 4878
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4868
    .end local v0    # "id":J
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 4877
    .restart local v0    # "id":J
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_1
    move-exception v5

    .line 4878
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4877
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4436
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4437
    return-void

    .line 4439
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 4441
    .local v0, "callingUser":Landroid/os/UserHandle;
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4442
    monitor-enter p0

    .line 4443
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearUserPoliciesLocked(Landroid/os/UserHandle;)V

    .line 4444
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    .line 4445
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/DeviceOwner;->removeProfileOwner(I)V

    .line 4446
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 4435
    return-void

    .line 4442
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ownerName"    # Ljava/lang/String;
    .param p4, "profileOwnerComponent"    # Landroid/content/ComponentName;
    .param p5, "adminExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 5386
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v6

    .line 5387
    .local v6, "user":Landroid/os/UserHandle;
    if-nez v6, :cond_0

    .line 5388
    return-object v8

    .line 5390
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5392
    .local v2, "id":J
    :try_start_0
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 5393
    .local v5, "profileOwnerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 5394
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5396
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 5399
    .local v7, "userHandle":I
    :try_start_1
    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 5400
    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    .line 5404
    :cond_1
    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5409
    :goto_0
    const/4 v8, 0x1

    :try_start_2
    invoke-direct {p0, p4, v8, v7, p5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V

    .line 5410
    invoke-virtual {p0, p4, p3, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5413
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5411
    return-object v6

    .line 5405
    :catch_0
    move-exception v1

    .line 5406
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v8, "DevicePolicyManagerService"

    const-string/jumbo v9, "Failed to make remote calls for configureUser"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 5412
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v5    # "profileOwnerPkg":Ljava/lang/String;
    .end local v7    # "userHandle":I
    :catchall_0
    move-exception v8

    .line 5413
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5412
    throw v8
.end method

.method public createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 5366
    const-string/jumbo v3, "ComponentName is null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5367
    monitor-enter p0

    .line 5368
    const/4 v3, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 5372
    .local v0, "id":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 5373
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    .line 5374
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 5378
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 5374
    return-object v3

    .line 5378
    :cond_0
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 5376
    return-object v5

    .line 5377
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    .line 5378
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5377
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5367
    .end local v0    # "id":J
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4804
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 4807
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4808
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 4807
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4809
    const-string/jumbo v8, ", uid="

    .line 4807
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4809
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 4807
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4810
    return-void

    .line 4813
    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4815
    .local v3, "p":Landroid/util/Printer;
    monitor-enter p0

    .line 4816
    :try_start_0
    const-string/jumbo v7, "Current Device Policy Manager state:"

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4817
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v7, :cond_1

    .line 4818
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    const-string/jumbo v8, "  "

    invoke-virtual {v7, v8, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4820
    :cond_1
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 4821
    .local v6, "userCount":I
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 4822
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 4823
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  Enabled Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4824
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4825
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 4826
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4827
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_2

    .line 4828
    const-string/jumbo v7, "  "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4829
    const-string/jumbo v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4830
    const-string/jumbo v7, "    "

    invoke-virtual {v1, v7, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4825
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4833
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 4834
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  Removing Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4835
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    .line 4834
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4838
    :cond_4
    const-string/jumbo v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4839
    const-string/jumbo v7, "  mPasswordOwner="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4821
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_5
    monitor-exit p0

    .line 4803
    return-void

    .line 4815
    .end local v5    # "u":I
    .end local v6    # "userCount":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5616
    const-string/jumbo v7, "ComponentName is null"

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5617
    monitor-enter p0

    .line 5620
    const/4 v7, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5622
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 5623
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 5631
    .local v0, "id":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    .line 5632
    .local v5, "um":Landroid/os/UserManager;
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 5635
    .local v3, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_0

    .line 5636
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 5639
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 5640
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2, p2, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 5641
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Only system apps can be enabled this way."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5647
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v4

    .line 5649
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v7, "DevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5651
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0

    .line 5615
    return-void

    .line 5645
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v5    # "um":Landroid/os/UserManager;
    :cond_1
    :try_start_4
    invoke-interface {v2, p2, v6}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5651
    :try_start_5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 5617
    .end local v0    # "id":J
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    .end local v6    # "userId":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 5650
    .restart local v0    # "id":J
    .restart local v6    # "userId":I
    :catchall_1
    move-exception v7

    .line 5651
    :try_start_6
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5650
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .locals 17
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5658
    const-string/jumbo v14, "ComponentName is null"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5659
    monitor-enter p0

    .line 5662
    const/4 v14, -0x1

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5664
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 5665
    .local v13, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .line 5668
    .local v4, "id":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    .line 5669
    .local v12, "um":Landroid/os/UserManager;
    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 5672
    .local v11, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v11, :cond_0

    .line 5673
    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 5676
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 5678
    .local v10, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v14

    .line 5680
    iget v15, v11, Landroid/content/pm/UserInfo;->id:I

    .line 5679
    const/16 v16, 0x0

    .line 5677
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v10, v0, v14, v1, v15}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 5683
    .local v2, "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .line 5684
    .local v8, "numberOfAppsInstalled":I
    if-eqz v2, :cond_3

    .line 5685
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 5686
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v14, :cond_1

    .line 5687
    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 5688
    .local v9, "packageName":Ljava/lang/String;
    iget v14, v11, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9, v14}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5689
    add-int/lit8 v8, v8, 0x1

    .line 5690
    invoke-interface {v10, v9, v13}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5699
    .end local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "info$iterator":Ljava/util/Iterator;
    .end local v8    # "numberOfAppsInstalled":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v12    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v3

    .line 5701
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v14, "DevicePolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to resolve intent for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5704
    :try_start_3
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5702
    const/4 v14, 0x0

    monitor-exit p0

    return v14

    .line 5692
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "info$iterator":Ljava/util/Iterator;
    .restart local v8    # "numberOfAppsInstalled":I
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v12    # "um":Landroid/os/UserManager;
    :cond_2
    :try_start_4
    const-string/jumbo v14, "DevicePolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Not enabling "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " since is not a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 5693
    const-string/jumbo v16, " system app"

    .line 5692
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 5703
    .end local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "info$iterator":Ljava/util/Iterator;
    .end local v8    # "numberOfAppsInstalled":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v12    # "um":Landroid/os/UserManager;
    :catchall_0
    move-exception v14

    .line 5704
    :try_start_5
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5703
    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5659
    .end local v4    # "id":J
    .end local v13    # "userId":I
    :catchall_1
    move-exception v14

    monitor-exit p0

    throw v14

    .line 5704
    .restart local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "id":J
    .restart local v8    # "numberOfAppsInstalled":I
    .restart local v10    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v12    # "um":Landroid/os/UserManager;
    .restart local v13    # "userId":I
    :cond_3
    :try_start_6
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    .line 5698
    return v8
.end method

.method public enforceCanManageCaCerts(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 3114
    if-nez p1, :cond_1

    .line 3115
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isCallerDelegatedCertInstaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3116
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_CA_CERTIFICATES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3113
    :cond_0
    :goto_0
    return-void

    .line 3119
    :cond_1
    monitor-enter p0

    .line 3120
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    .line 3119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;
    .locals 8
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 1393
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 1394
    return-object v7

    .line 1396
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1397
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1398
    .local v3, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1399
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1401
    const v5, 0x8080

    .line 1399
    invoke-virtual {v4, v3, v5, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 1403
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 1404
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1408
    :cond_2
    :try_start_0
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, v6, v4}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 1413
    :catch_0
    move-exception v0

    .line 1414
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1416
    return-object v7

    .line 1409
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1410
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1412
    return-object v7
.end method

.method public getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5741
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 5746
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 5747
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 5748
    const/4 v5, 0x0

    return-object v5

    .line 5750
    :cond_0
    monitor-enter p0

    .line 5751
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 5752
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5753
    .local v0, "N":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 5754
    .local v4, "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5755
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5756
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5754
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5758
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v5

    .line 5750
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1220
    .local v1, "callingUid":I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminWithPolicyForUidLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 1221
    .local v3, "result":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_0

    .line 1222
    return-object v3

    .line 1225
    :cond_0
    if-eqz p1, :cond_3

    .line 1226
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1227
    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1228
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1229
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, -0x2

    if-ne p2, v5, :cond_1

    .line 1230
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1231
    const-string/jumbo v7, " does not own the device"

    .line 1230
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1233
    :cond_1
    const/4 v5, -0x1

    if-ne p2, v5, :cond_2

    .line 1234
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1235
    const-string/jumbo v7, " does not own the profile"

    .line 1234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1237
    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1238
    const-string/jumbo v7, " did not specify uses-policy for: "

    .line 1237
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1239
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v7

    .line 1237
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1241
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "userId":I
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No active admin owned by uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1242
    const-string/jumbo v7, " for policy #"

    .line 1241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1207
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1208
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1208
    if-eqz v1, :cond_0

    .line 1210
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1208
    if-eqz v1, :cond_0

    .line 1211
    return-object v0

    .line 1213
    :cond_0
    return-object v3
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2044
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 2045
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v4

    .line 2048
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2049
    monitor-enter p0

    .line 2050
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2051
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2052
    .local v0, "N":I
    if-gtz v0, :cond_1

    .line 2053
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    .line 2055
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2056
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2057
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2056
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    .line 2059
    return-object v3

    .line 2049
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5456
    const-string/jumbo v4, "ComponentName is null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5457
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {v1, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 5459
    .local v1, "userHandle":Landroid/os/UserHandle;
    monitor-enter p0

    .line 5460
    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 5464
    .local v2, "id":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p2, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 5467
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 5469
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 5467
    return-object v0

    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :try_start_3
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 5468
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    .line 5469
    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5468
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5459
    .end local v2    # "id":J
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getAutoTimeRequired()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3978
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 3979
    return v1

    .line 3981
    :cond_0
    monitor-enter p0

    .line 3982
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3983
    .local v0, "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v1

    .line 3981
    .end local v0    # "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5919
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 5920
    const/4 v1, 0x0

    return v1

    .line 5922
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5923
    monitor-enter p0

    .line 5925
    const/4 v1, -0x1

    .line 5924
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5926
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 5923
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getBluetoothContactSharingDisabledForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 5935
    monitor-enter p0

    .line 5936
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5937
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5935
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 4021
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 4022
    return v4

    .line 4024
    :cond_0
    monitor-enter p0

    .line 4025
    if-eqz p1, :cond_2

    .line 4026
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4027
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v4

    .line 4030
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4032
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4033
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 4034
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4035
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_3

    .line 4036
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 4033
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    .line 4039
    return v4

    .line 4024
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3319
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3320
    .local v1, "userHandle":I
    monitor-enter p0

    .line 3321
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3322
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 3323
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 3320
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5827
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 5828
    const/4 v1, 0x0

    return v1

    .line 5830
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5831
    monitor-enter p0

    .line 5833
    const/4 v1, -0x1

    .line 5832
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5834
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 5831
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCrossProfileCallerIdDisabledForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 5842
    monitor-enter p0

    .line 5843
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5844
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5842
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2367
    monitor-enter p0

    .line 2369
    const/4 v1, -0x1

    .line 2368
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2370
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2371
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2370
    if-eqz v1, :cond_1

    :cond_0
    monitor-exit p0

    .line 2372
    return-object v2

    .line 2374
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2375
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 2377
    :cond_2
    :try_start_2
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 2367
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 2748
    monitor-enter p0

    .line 2751
    const/4 v3, 0x0

    .line 2752
    const/4 v4, 0x1

    .line 2751
    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2755
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2756
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    move v0, p1

    .line 2757
    .local v0, "id":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2759
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    .line 2756
    .end local v0    # "id":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_0
    :try_start_1
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "id":I
    goto :goto_0

    .line 2748
    .end local v0    # "id":I
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getDeviceInitializer()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4353
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 4354
    return-object v1

    .line 4356
    :cond_0
    monitor-enter p0

    .line 4357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceInitializer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4358
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceInitializerPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    .line 4361
    return-object v1

    .line 4356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeviceInitializerComponent()Landroid/content/ComponentName;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4366
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 4367
    return-object v1

    .line 4369
    :cond_0
    monitor-enter p0

    .line 4370
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceInitializer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4371
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceInitializerComponent()Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    .line 4374
    return-object v1

    .line 4369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4184
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 4185
    return-object v1

    .line 4187
    :cond_0
    monitor-enter p0

    .line 4188
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4189
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    .line 4192
    return-object v1

    .line 4187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4197
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4198
    return-object v3

    .line 4200
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4201
    monitor-enter p0

    .line 4202
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4205
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4206
    .local v0, "deviceOwnerPackage":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getApplicationLabel(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0    # "deviceOwnerPackage":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    .line 4203
    return-object v3

    .line 4201
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDoNotAskCredentialsOnBoot()Z
    .locals 4

    .prologue
    .line 2994
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 2995
    const-string/jumbo v2, "android.permission.QUERY_DO_NOT_ASK_CREDENTIALS_ON_BOOT"

    const/4 v3, 0x0

    .line 2994
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    monitor-enter p0

    .line 2997
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 2998
    .local v0, "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 2996
    .end local v0    # "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 3664
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 3665
    return-object v5

    .line 3667
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3668
    monitor-enter p0

    .line 3669
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3672
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3673
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3674
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3675
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v4, :cond_1

    .line 3678
    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 3673
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    monitor-exit p0

    .line 3683
    return-object v5

    .line 3668
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .locals 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x0

    .line 4073
    iget-boolean v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v12, :cond_0

    .line 4074
    return v11

    .line 4076
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4077
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4079
    .local v4, "ident":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4080
    if-eqz p1, :cond_2

    .line 4081
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4082
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v11, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4120
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4082
    return v11

    .line 4085
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_3
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 4087
    .local v7, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4090
    new-instance v6, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 4091
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4099
    :goto_0
    const/4 v10, 0x0

    .line 4100
    .local v10, "which":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 4101
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4102
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4103
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 4104
    iget-object v11, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4105
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    if-eq v11, p2, :cond_5

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4112
    iget v11, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    and-int/lit8 v11, v11, 0x30

    or-int/2addr v10, v11

    .line 4103
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4095
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v10    # "which":I
    :cond_4
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .restart local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_0

    .line 4108
    .restart local v0    # "N":I
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "i":I
    .restart local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v9    # "userInfo$iterator":Ljava/util/Iterator;
    .restart local v10    # "which":I
    :cond_5
    iget v11, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    or-int/2addr v10, v11

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4120
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4117
    return v10

    .line 4079
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v10    # "which":I
    :catchall_0
    move-exception v11

    :try_start_5
    monitor-exit p0

    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4119
    :catchall_1
    move-exception v11

    .line 4120
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4119
    throw v11
.end method

.method public getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5973
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5974
    monitor-enter p0

    .line 5975
    const/4 v2, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5976
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 5977
    .local v1, "userHandle":I
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockTaskPackagesLocked(I)Ljava/util/List;

    move-result-object v0

    .line 5978
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 5974
    .end local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "userHandle":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getManagedUserId(I)I
    .locals 3
    .param p1, "callingUserId"    # I

    .prologue
    .line 5886
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ui$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 5887
    .local v0, "ui":Landroid/content/pm/UserInfo;
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, p1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5893
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    return v2

    .line 5898
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 2786
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2787
    return v1

    .line 2789
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2790
    monitor-enter p0

    .line 2791
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2793
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v1

    .line 2792
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    goto :goto_0

    .line 2790
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3046
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v11, :cond_0

    .line 3047
    const-wide/16 v12, 0x0

    return-wide v12

    .line 3049
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3050
    monitor-enter p0

    .line 3051
    const-wide/16 v8, 0x0

    .line 3053
    .local v8, "time":J
    if-eqz p1, :cond_2

    .line 3054
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 3055
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_1

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v12

    .line 3051
    :cond_1
    const-wide/16 v12, 0x0

    .line 3055
    goto :goto_0

    .line 3059
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 3060
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3061
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 3062
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3063
    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 3064
    iget-object v11, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3065
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-nez v11, :cond_5

    .line 3066
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 3063
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3067
    :cond_5
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_4

    .line 3068
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_4

    .line 3069
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    .line 3073
    return-wide v8

    .line 3050
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v10    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2411
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2412
    const-wide/16 v0, 0x0

    return-wide v0

    .line 2414
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2415
    monitor-enter p0

    .line 2416
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 2415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2284
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v11, :cond_0

    .line 2285
    const-wide/16 v12, 0x0

    return-wide v12

    .line 2287
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2288
    monitor-enter p0

    .line 2289
    const-wide/16 v8, 0x0

    .line 2291
    .local v8, "timeout":J
    if-eqz p1, :cond_2

    .line 2292
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 2293
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_1

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v12

    .line 2289
    :cond_1
    const-wide/16 v12, 0x0

    .line 2293
    goto :goto_0

    .line 2296
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2297
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2298
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2299
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2300
    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 2301
    iget-object v11, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2302
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_4

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_5

    .line 2303
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_5

    .line 2304
    :cond_4
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2300
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    .line 2308
    return-wide v8

    .line 2288
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v10    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 2224
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    .line 2225
    return v8

    .line 2227
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2228
    monitor-enter p0

    .line 2229
    const/4 v3, 0x0

    .line 2231
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2232
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2233
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v8

    .line 2237
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 2238
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2239
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2240
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2241
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2242
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2243
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v3, v8, :cond_4

    .line 2244
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2241
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    .line 2248
    return v3

    .line 2228
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 2177
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    .line 2178
    return v8

    .line 2180
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2181
    monitor-enter p0

    .line 2182
    const/4 v3, 0x0

    .line 2184
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2185
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2186
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v8

    .line 2190
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 2191
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2192
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2193
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2194
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2195
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2196
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v3, v8, :cond_4

    .line 2197
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2194
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    .line 2201
    return v3

    .line 2181
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 2530
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    .line 2531
    return v8

    .line 2533
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2534
    monitor-enter p0

    .line 2535
    const/4 v3, 0x0

    .line 2537
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2538
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2539
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v8

    .line 2543
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 2544
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2545
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2546
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2547
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2548
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2549
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/high16 v8, 0x60000

    invoke-static {v1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2547
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2552
    :cond_5
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-ge v3, v8, :cond_4

    .line 2553
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    .line 2557
    return v3

    .line 2534
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 2483
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    .line 2484
    return v8

    .line 2486
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2487
    monitor-enter p0

    .line 2488
    const/4 v3, 0x0

    .line 2490
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2491
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2492
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v8

    .line 2496
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 2497
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2498
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2499
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2500
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2501
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2502
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-ge v3, v8, :cond_4

    .line 2503
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2500
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    .line 2507
    return v3

    .line 2487
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 2680
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    .line 2681
    return v8

    .line 2683
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2684
    monitor-enter p0

    .line 2685
    const/4 v3, 0x0

    .line 2687
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2688
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2689
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v8

    .line 2693
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 2694
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2695
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2696
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2697
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2698
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2699
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/high16 v8, 0x60000

    invoke-static {v1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2697
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2702
    :cond_5
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-ge v3, v8, :cond_4

    .line 2703
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    .line 2707
    return v3

    .line 2684
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 2580
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    .line 2581
    return v8

    .line 2583
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2584
    monitor-enter p0

    .line 2585
    const/4 v3, 0x0

    .line 2587
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2588
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2589
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v8

    .line 2593
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 2594
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2595
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2596
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2597
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2598
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2599
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/high16 v8, 0x60000

    invoke-static {v1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2597
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2602
    :cond_5
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-ge v3, v8, :cond_4

    .line 2603
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    .line 2607
    return v3

    .line 2584
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 2630
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    .line 2631
    return v8

    .line 2633
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2634
    monitor-enter p0

    .line 2635
    const/4 v3, 0x0

    .line 2637
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2638
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2639
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v8

    .line 2643
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 2644
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2645
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2646
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2647
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2648
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2649
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/high16 v8, 0x60000

    invoke-static {v1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2647
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2652
    :cond_5
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-ge v3, v8, :cond_4

    .line 2653
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    .line 2657
    return v3

    .line 2634
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 2439
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    .line 2440
    return v8

    .line 2442
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2443
    monitor-enter p0

    .line 2444
    const/4 v3, 0x0

    .line 2446
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2447
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2448
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v8

    .line 2452
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 2453
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2454
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2455
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2456
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2457
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2458
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-ge v3, v8, :cond_4

    .line 2459
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2456
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    .line 2463
    return v3

    .line 2443
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 2130
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    .line 2131
    return v8

    .line 2133
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2134
    monitor-enter p0

    .line 2135
    const/4 v3, 0x0

    .line 2137
    .local v3, "mode":I
    if-eqz p1, :cond_2

    .line 2138
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2139
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v8

    .line 2143
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 2144
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "userInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2145
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2146
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2147
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2148
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2149
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v8, :cond_4

    .line 2150
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2147
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    .line 2154
    return v3

    .line 2134
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 6526
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6528
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 6529
    .local v5, "user":Landroid/os/UserHandle;
    monitor-enter p0

    .line 6530
    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 6533
    .local v2, "ident":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 6534
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 6533
    invoke-interface {v6, p3, p2, v7}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 6535
    .local v0, "granted":I
    invoke-virtual {v1, p3, p2, v5}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 6536
    .local v4, "permFlags":I
    and-int/lit8 v6, v4, 0x4

    .line 6537
    const/4 v7, 0x4

    .line 6536
    if-eq v6, v7, :cond_0

    .line 6547
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 6539
    return v8

    .line 6542
    :cond_0
    if-nez v0, :cond_1

    .line 6543
    const/4 v6, 0x1

    .line 6547
    :goto_0
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 6542
    return v6

    .line 6544
    :cond_1
    const/4 v6, 0x2

    goto :goto_0

    .line 6546
    .end local v0    # "granted":I
    .end local v4    # "permFlags":I
    :catchall_0
    move-exception v6

    .line 6547
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6546
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6529
    .end local v2    # "ident":J
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public getPermissionPolicy(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6465
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 6466
    .local v0, "userId":I
    monitor-enter p0

    .line 6467
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    .line 6468
    .local v1, "userPolicy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    .line 6466
    .end local v1    # "userPolicy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5142
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 5143
    const/4 v1, 0x0

    return-object v1

    .line 5145
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5147
    monitor-enter p0

    .line 5149
    const/4 v1, -0x1

    .line 5148
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5150
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 5147
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
    .locals 23
    .param p1, "userId"    # I

    .prologue
    .line 5156
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 5157
    const/16 v22, 0x0

    return-object v22

    .line 5159
    :cond_0
    monitor-enter p0

    .line 5160
    const/16 v16, 0x0

    .line 5164
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v15

    .line 5165
    .local v15, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    .line 5166
    .local v3, "PROFILES_SIZE":I
    const/4 v8, 0x0

    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 5169
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v14

    .line 5170
    .local v14, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v0, v14, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    .line 5171
    .local v2, "N":I
    const/4 v12, 0x0

    .local v12, "j":I
    move-object/from16 v17, v16

    .local v17, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    if-ge v12, v2, :cond_2

    .line 5172
    :try_start_1
    iget-object v0, v14, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5173
    .local v5, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v7, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    .line 5174
    .local v7, "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_8

    .line 5175
    if-nez v17, :cond_1

    .line 5176
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5171
    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v17, v16

    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 5178
    :cond_1
    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v16, v17

    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 5166
    .end local v5    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v7    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v16, v17

    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 5185
    .end local v2    # "N":I
    .end local v12    # "j":I
    .end local v14    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    if-eqz v16, :cond_7

    .line 5186
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v10

    .line 5188
    .local v10, "id":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v21

    .line 5189
    .local v21, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 5190
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 p1, v0

    .line 5193
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 5195
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v9

    .line 5197
    .local v9, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 5198
    .local v13, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v9, :cond_6

    .line 5199
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "service$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 5200
    .local v18, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    .line 5201
    .local v20, "serviceInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5202
    .local v6, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_5

    .line 5203
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 5207
    .end local v4    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .end local v18    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v19    # "service$iterator":Ljava/util/Iterator;
    .end local v20    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v22

    .line 5208
    :try_start_4
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5207
    throw v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5159
    .end local v3    # "PROFILES_SIZE":I
    .end local v8    # "i":I
    .end local v10    # "id":J
    .end local v15    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v22

    :goto_4
    monitor-exit p0

    throw v22

    .line 5208
    .restart local v3    # "PROFILES_SIZE":I
    .restart local v4    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v8    # "i":I
    .restart local v9    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v10    # "id":J
    .restart local v13    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v15    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v21    # "user":Landroid/content/pm/UserInfo;
    :cond_6
    :try_start_5
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v4    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v9    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v10    # "id":J
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    :cond_7
    monitor-exit p0

    .line 5212
    return-object v16

    .line 5159
    .restart local v2    # "N":I
    .restart local v12    # "j":I
    .restart local v14    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v22

    move-object/from16 v16, v17

    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v7    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v16, v17

    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_2
.end method

.method public getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5290
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 5291
    const/4 v1, 0x0

    return-object v1

    .line 5293
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5295
    monitor-enter p0

    .line 5297
    const/4 v1, -0x1

    .line 5296
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5298
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 5295
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .locals 26

    .prologue
    .line 5306
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 5313
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    .line 5314
    .local v23, "userId":I
    monitor-enter p0

    .line 5315
    const/16 v20, 0x0

    .line 5319
    .local v20, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v19

    .line 5320
    .local v19, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    .line 5321
    .local v3, "PROFILES_SIZE":I
    const/4 v9, 0x0

    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "i":I
    :goto_0
    if-ge v9, v3, :cond_2

    .line 5324
    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v18

    .line 5325
    .local v18, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 5326
    .local v2, "N":I
    const/16 v16, 0x0

    .local v16, "j":I
    move-object/from16 v21, v20

    .local v21, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    .line 5327
    :try_start_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5328
    .local v4, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 5329
    .local v8, "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_6

    .line 5330
    if-nez v21, :cond_0

    .line 5331
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5326
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v21, v20

    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 5307
    .end local v2    # "N":I
    .end local v3    # "PROFILES_SIZE":I
    .end local v4    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v8    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "i":I
    .end local v16    # "j":I
    .end local v18    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "userId":I
    :catch_0
    move-exception v7

    .line 5308
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v24, "DevicePolicyManagerService"

    const-string/jumbo v25, "Failed to make remote calls to get current user"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5310
    const/16 v24, 0x0

    return-object v24

    .line 5333
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v2    # "N":I
    .restart local v3    # "PROFILES_SIZE":I
    .restart local v4    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v8    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "i":I
    .restart local v16    # "j":I
    .restart local v18    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "userId":I
    :cond_0
    :try_start_3
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v20, v21

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 5321
    .end local v4    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v20, v21

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 5340
    .end local v2    # "N":I
    .end local v16    # "j":I
    .end local v18    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-eqz v20, :cond_5

    .line 5341
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 5342
    const-string/jumbo v25, "input_method"

    .line 5341
    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodManager;

    .line 5343
    .local v15, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v14

    .line 5344
    .local v14, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v10

    .line 5346
    .local v10, "id":J
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    .line 5347
    .local v17, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v14, :cond_4

    .line 5348
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "ime$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 5349
    .local v12, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v22

    .line 5350
    .local v22, "serviceInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5351
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_3

    .line 5352
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 5356
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    .end local v13    # "ime$iterator":Ljava/util/Iterator;
    .end local v17    # "pm":Landroid/content/pm/IPackageManager;
    .end local v22    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catchall_0
    move-exception v24

    .line 5357
    :try_start_6
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5356
    throw v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5314
    .end local v3    # "PROFILES_SIZE":I
    .end local v9    # "i":I
    .end local v10    # "id":J
    .end local v14    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v15    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v24

    :goto_4
    monitor-exit p0

    throw v24

    .line 5357
    .restart local v3    # "PROFILES_SIZE":I
    .restart local v9    # "i":I
    .restart local v10    # "id":J
    .restart local v14    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v15    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .restart local v17    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4
    :try_start_7
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v10    # "id":J
    .end local v14    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v15    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v17    # "pm":Landroid/content/pm/IPackageManager;
    :cond_5
    monitor-exit p0

    .line 5360
    return-object v20

    .line 5314
    .restart local v2    # "N":I
    .restart local v16    # "j":I
    .restart local v18    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v24

    move-object/from16 v20, v21

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v8    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v20, v21

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_2
.end method

.method public getProfileOwner(I)Landroid/content/ComponentName;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 4599
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 4600
    return-object v1

    .line 4603
    :cond_0
    monitor-enter p0

    .line 4604
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v0, :cond_1

    .line 4605
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerComponent(I)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    .line 4608
    return-object v1

    .line 4603
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProfileOwnerName(I)Ljava/lang/String;
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 4632
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4633
    return-object v3

    .line 4635
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4636
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 4637
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 4638
    return-object v3

    .line 4640
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getApplicationLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getProfileWithMinimumFailedPasswordsForWipe(I)I
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    const/16 v1, -0x2710

    .line 2799
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2800
    return v1

    .line 2802
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2803
    monitor-enter p0

    .line 2804
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2805
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    return v1

    .line 2803
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .locals 11
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 3437
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 3438
    return-void

    .line 3440
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3441
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 3442
    const-string/jumbo v2, "android.permission.BIND_DEVICE_ADMIN"

    .line 3441
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    monitor-enter p0

    .line 3445
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3446
    .local v9, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v9, :cond_1

    .line 3448
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 3451
    return-void

    .line 3449
    :catch_0
    move-exception v10

    .local v10, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 3453
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3454
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3455
    iget-object v0, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3456
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 3457
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;

    invoke-direct {v4, p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v3, 0x0

    .line 3465
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3456
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 3436
    return-void

    .line 3444
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v9    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRestrictionsProvider(I)Landroid/content/ComponentName;
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 4991
    monitor-enter p0

    .line 4992
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 4993
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only the system can query the permission provider"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4991
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4995
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 4996
    .local v0, "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 3910
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 3911
    return v4

    .line 3913
    :cond_0
    monitor-enter p0

    .line 3914
    if-eqz p1, :cond_2

    .line 3915
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3916
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v4

    .line 3919
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3920
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3921
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 3922
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3923
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_3

    .line 3924
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 3921
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    .line 3927
    return v4

    .line 3913
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 3803
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 3804
    return v5

    .line 3806
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3807
    monitor-enter p0

    .line 3809
    if-eqz p1, :cond_2

    .line 3811
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3812
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v4

    :cond_1
    move v4, v5

    goto :goto_0

    .line 3817
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3818
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3819
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3820
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    .line 3821
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 3819
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    monitor-exit p0

    .line 3824
    return v5

    .line 3807
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getStorageEncryptionStatus(I)I
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 3833
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 3836
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3837
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    return v0
.end method

.method public getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6380
    monitor-enter p0

    .line 6381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    .line 6382
    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/SystemUpdatePolicy;->isValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit p0

    .line 6386
    return-object v0

    .line 6383
    :cond_1
    :try_start_1
    const-string/jumbo v1, "DevicePolicyManagerService"

    const-string/jumbo v2, "Stored system update policy is invalid, return null instead."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 6384
    return-object v3

    .line 6380
    .end local v0    # "policy":Landroid/app/admin/SystemUpdatePolicy;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 20
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4921
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 4922
    const/16 v17, 0x0

    return-object v17

    .line 4924
    :cond_0
    const-string/jumbo v17, "agent null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4925
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4927
    monitor-enter p0

    .line 4928
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 4929
    .local v7, "componentName":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 4930
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 4931
    .local v6, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v6, :cond_1

    const/16 v17, 0x0

    monitor-exit p0

    return-object v17

    .line 4932
    :cond_1
    :try_start_1
    iget-object v0, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    .line 4933
    .local v14, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    if-eqz v14, :cond_2

    iget-object v0, v14, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v17, :cond_3

    :cond_2
    const/16 v17, 0x0

    monitor-exit p0

    return-object v17

    .line 4934
    :cond_3
    :try_start_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4935
    .local v13, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    iget-object v0, v14, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 4936
    return-object v13

    .line 4940
    .end local v6    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v13    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .end local v14    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v12

    .line 4941
    .local v12, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v13, 0x0

    .line 4946
    .local v13, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v5, 0x1

    .line 4947
    .local v5, "allAdminsHaveOptions":Z
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v13    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .local v16, "userInfo$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 4948
    .local v15, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v11

    .line 4949
    .local v11, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v0, v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4950
    .local v3, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v3, :cond_5

    .line 4951
    iget-object v0, v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4952
    .local v4, "active":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x10

    if-eqz v17, :cond_7

    const/4 v8, 0x1

    .line 4954
    .local v8, "disablesTrust":Z
    :goto_2
    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    .line 4955
    .local v10, "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    if-eqz v10, :cond_6

    iget-object v0, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    iget-object v0, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 4966
    :cond_6
    if-eqz v8, :cond_a

    .line 4967
    const/4 v5, 0x0

    .line 4968
    goto :goto_0

    .line 4952
    .end local v8    # "disablesTrust":Z
    .end local v10    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "disablesTrust":Z
    goto :goto_2

    .line 4956
    .restart local v10    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_8
    if-eqz v8, :cond_b

    .line 4957
    if-nez v13, :cond_9

    .line 4958
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4960
    :cond_9
    iget-object v0, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4950
    :cond_a
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 4962
    :cond_b
    const-string/jumbo v17, "DevicePolicyManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Ignoring admin "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 4963
    const-string/jumbo v19, " because it has trust options but doesn\'t declare "

    .line 4962
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 4964
    const-string/jumbo v19, "KEYGUARD_DISABLE_TRUST_AGENTS"

    .line 4962
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 4927
    .end local v3    # "N":I
    .end local v4    # "active":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v5    # "allAdminsHaveOptions":Z
    .end local v7    # "componentName":Ljava/lang/String;
    .end local v8    # "disablesTrust":Z
    .end local v9    # "i":I
    .end local v10    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    .end local v11    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v12    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v15    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v16    # "userInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 4972
    .restart local v5    # "allAdminsHaveOptions":Z
    .restart local v7    # "componentName":Ljava/lang/String;
    .restart local v12    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v16    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_c
    if-eqz v5, :cond_d

    :goto_4
    monitor-exit p0

    return-object v13

    :cond_d
    const/4 v13, 0x0

    goto :goto_4
.end method

.method getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1089
    monitor-enter p0

    .line 1090
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .line 1091
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-nez v0, :cond_0

    .line 1092
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;-><init>(I)V

    .line 1093
    .restart local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1094
    invoke-direct {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1096
    return-object v0

    .line 1089
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 1111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1113
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1113
    return-object v2

    .line 1114
    :catchall_0
    move-exception v2

    .line 1115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    throw v2
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2028
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2029
    const/4 v1, 0x0

    return v1

    .line 2031
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2032
    monitor-enter p0

    .line 2033
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2034
    .local v0, "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 2035
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2032
    .end local v0    # "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2037
    .restart local v0    # "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1
.end method

.method public hasUserSetupCompleted()Z
    .locals 1

    .prologue
    .line 4498
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v0

    return v0
.end method

.method public installCaCert(Landroid/content/ComponentName;[B)Z
    .locals 12
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3146
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 3150
    :try_start_0
    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 3151
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/security/cert/Certificate;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v10}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 3160
    .local v8, "pemCert":[B
    new-instance v9, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 3161
    .local v9, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3163
    .local v4, "id":J
    :try_start_1
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, v9}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 3165
    .local v7, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_2
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v10

    invoke-interface {v10, v8}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3170
    :try_start_3
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3166
    const/4 v10, 0x1

    .line 3176
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3166
    return v10

    .line 3155
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "id":J
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v8    # "pemCert":[B
    .end local v9    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v6

    .line 3156
    .local v6, "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "DevicePolicyManagerService"

    const-string/jumbo v11, "Problem reading cert"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3157
    const/4 v10, 0x0

    return v10

    .line 3152
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3153
    .local v0, "ce":Ljava/security/cert/CertificateException;
    const-string/jumbo v10, "DevicePolicyManagerService"

    const-string/jumbo v11, "Problem converting cert"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3154
    const/4 v10, 0x0

    return v10

    .line 3167
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "id":J
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8    # "pemCert":[B
    .restart local v9    # "userHandle":Landroid/os/UserHandle;
    :catch_2
    move-exception v2

    .line 3168
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v10, "DevicePolicyManagerService"

    const-string/jumbo v11, "installCaCertsToKeyChain(): "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3170
    :try_start_5
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3176
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3178
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_0
    const/4 v10, 0x0

    return v10

    .line 3169
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v10

    .line 3170
    :try_start_6
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 3169
    throw v10
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3172
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_3
    move-exception v3

    .line 3173
    .local v3, "e1":Ljava/lang/InterruptedException;
    :try_start_7
    const-string/jumbo v10, "DevicePolicyManagerService"

    const-string/jumbo v11, "installCaCertsToKeyChain(): "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3176
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3175
    .end local v3    # "e1":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v10

    .line 3176
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3175
    throw v10
.end method

.method public installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # [B
    .param p3, "cert"    # [B
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    .line 3214
    if-nez p1, :cond_0

    .line 3215
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isCallerDelegatedCertInstaller()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3216
    new-instance v7, Ljava/lang/SecurityException;

    const-string/jumbo v8, "who == null, but caller is not cert installer"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3219
    :cond_0
    monitor-enter p0

    .line 3220
    const/4 v7, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3223
    :cond_1
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 3224
    .local v6, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3226
    .local v2, "id":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v5

    .line 3228
    .local v5, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_2
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    .line 3229
    .local v4, "keyChain":Landroid/security/IKeyChainService;
    invoke-interface {v4, p2, p3, p4}, Landroid/security/IKeyChainService;->installKeyPair([B[BLjava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    .line 3233
    :try_start_3
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3239
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3229
    return v7

    .line 3219
    .end local v2    # "id":J
    .end local v4    # "keyChain":Landroid/security/IKeyChainService;
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v6    # "userHandle":Landroid/os/UserHandle;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 3230
    .restart local v2    # "id":J
    .restart local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v6    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v0

    .line 3231
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v7, "DevicePolicyManagerService"

    const-string/jumbo v8, "Installing certificate"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3233
    :try_start_5
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3239
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3241
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_0
    const/4 v7, 0x0

    return v7

    .line 3232
    .restart local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_1
    move-exception v7

    .line 3233
    :try_start_6
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 3232
    throw v7
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3235
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v1

    .line 3236
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string/jumbo v7, "DevicePolicyManagerService"

    const-string/jumbo v8, "Interrupted while installing certificate"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3239
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3238
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v7

    .line 3239
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3238
    throw v7
.end method

.method public isActivePasswordSufficient(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2713
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2714
    return v3

    .line 2716
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2718
    monitor-enter p0

    .line 2723
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2724
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_2

    move v0, p1

    .line 2725
    .local v0, "id":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2729
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2730
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 2731
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-ge v5, v6, :cond_3

    :cond_1
    monitor-exit p0

    .line 2732
    return v4

    .line 2724
    .end local v0    # "id":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    :try_start_1
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    .restart local v0    # "id":I
    goto :goto_0

    .line 2734
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v6, 0x60000

    if-eq v5, v6, :cond_4

    monitor-exit p0

    .line 2735
    return v3

    .line 2737
    :cond_4
    :try_start_2
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_6

    .line 2738
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_6

    .line 2739
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_6

    .line 2740
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_6

    .line 2741
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_6

    .line 2742
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-lt v5, v6, :cond_5

    :goto_1
    monitor-exit p0

    .line 2737
    return v3

    :cond_5
    move v3, v4

    .line 2742
    goto :goto_1

    :cond_6
    move v3, v4

    .line 2737
    goto :goto_1

    .line 2718
    .end local v0    # "id":I
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 2005
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2006
    return v0

    .line 2008
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2009
    monitor-enter p0

    .line 2010
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    return v0

    .line 2009
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5595
    const-string/jumbo v5, "ComponentName is null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5596
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5597
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 5598
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5600
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 5602
    .local v2, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 5603
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p2, v0}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 5608
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 5603
    return v5

    .line 5604
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v4

    .line 5606
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "DevicePolicyManagerService"

    const-string/jumbo v6, "Failed to getApplicationHiddenSettingAsUser"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5608
    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5610
    const/4 v5, 0x0

    monitor-exit p0

    return v5

    .line 5607
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 5608
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5607
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5597
    .end local v2    # "id":J
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public isDeviceInitializer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4341
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4342
    return v0

    .line 4344
    :cond_0
    monitor-enter p0

    .line 4345
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    .line 4346
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceInitializer()Z

    move-result v1

    .line 4345
    if-eqz v1, :cond_1

    .line 4347
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceInitializerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_1
    monitor-exit p0

    .line 4345
    return v0

    .line 4344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4172
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4173
    return v0

    .line 4175
    :cond_0
    monitor-enter p0

    .line 4176
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    .line 4177
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v1

    .line 4176
    if-eqz v1, :cond_1

    .line 4178
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_1
    monitor-exit p0

    .line 4176
    return v0

    .line 4175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 5995
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5996
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5997
    .local v4, "userHandle":I
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 5998
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 5999
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 6000
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6004
    .local v1, "lockTaskPackage":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 6005
    const/4 v5, 0x1

    monitor-exit p0

    return v5

    .line 5999
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "lockTaskPackage":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    .line 6009
    const/4 v5, 0x0

    return v5

    .line 5998
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6124
    const-string/jumbo v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6125
    monitor-enter p0

    .line 6126
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6129
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6130
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 6125
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2016
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2017
    const/4 v1, 0x0

    return v1

    .line 2019
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2020
    monitor-enter p0

    .line 2021
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 2022
    .local v0, "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 2020
    .end local v0    # "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isRuntimePermission(Ljava/lang/String;)Z
    .locals 5
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6553
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 6554
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 6555
    .local v1, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget v4, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v4, v4, 0xf

    if-ne v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5788
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 5790
    .local v4, "userId":I
    monitor-enter p0

    .line 5791
    if-eqz p1, :cond_0

    .line 5792
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5795
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 5797
    .local v0, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 5798
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, v4}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 5803
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 5798
    return v5

    .line 5799
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v3

    .line 5801
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "DevicePolicyManagerService"

    const-string/jumbo v6, "Failed to getBlockUninstallForUser"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5803
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 5806
    const/4 v5, 0x0

    return v5

    .line 5802
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 5803
    :try_start_5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5802
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5790
    .end local v0    # "id":J
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method loadDeviceOwner()V
    .locals 1

    .prologue
    .line 1143
    monitor-enter p0

    .line 1144
    :try_start_0
    invoke-static {}, Lcom/android/server/devicepolicy/DeviceOwner;->load()Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    .line 1145
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateDeviceOwnerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1142
    return-void

    .line 1143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lockNow()V
    .locals 2

    .prologue
    .line 3079
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 3080
    return-void

    .line 3082
    :cond_0
    monitor-enter p0

    .line 3085
    const/4 v0, 0x0

    .line 3086
    const/4 v1, 0x3

    .line 3085
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3087
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lockNowUnchecked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3078
    return-void

    .line 3082
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    .locals 8
    .param p1, "isEnabled"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 6014
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_0

    .line 6015
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "notifyLockTaskModeChanged can only be called by system"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 6017
    :cond_0
    monitor-enter p0

    .line 6018
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 6019
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6020
    .local v2, "adminExtras":Landroid/os/Bundle;
    const-string/jumbo v6, "android.app.extra.LOCK_TASK_PACKAGE"

    invoke-virtual {v2, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6021
    iget-object v6, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6022
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v3

    .line 6023
    .local v3, "ownsDevice":Z
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 6024
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 6025
    :goto_1
    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    .line 6026
    :cond_2
    if-eqz p1, :cond_4

    .line 6027
    const-string/jumbo v6, "android.app.action.LOCK_TASK_ENTERING"

    .line 6028
    const/4 v7, 0x0

    .line 6027
    invoke-virtual {p0, v0, v6, v2, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6017
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    .end local v2    # "adminExtras":Landroid/os/Bundle;
    .end local v3    # "ownsDevice":Z
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 6023
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "admin$iterator":Ljava/util/Iterator;
    .restart local v2    # "adminExtras":Landroid/os/Bundle;
    .restart local v3    # "ownsDevice":Z
    .restart local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    const/4 v4, 0x0

    .local v4, "ownsProfile":Z
    goto :goto_1

    .line 6030
    .end local v4    # "ownsProfile":Z
    :cond_4
    :try_start_1
    const-string/jumbo v6, "android.app.action.LOCK_TASK_EXITING"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "ownsDevice":Z
    :cond_5
    monitor-exit p0

    .line 6013
    return-void
.end method

.method public notifyPendingSystemUpdate(J)V
    .locals 11
    .param p1, "updateReceivedTime"    # J

    .prologue
    .line 6408
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "android.permission.NOTIFY_PENDING_SYSTEM_UPDATE"

    .line 6409
    const-string/jumbo v9, "Only the system update service can broadcast update information"

    .line 6408
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6411
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    if-eqz v7, :cond_0

    .line 6412
    const-string/jumbo v7, "DevicePolicyManagerService"

    const-string/jumbo v8, "Only the system update service in the primary usercan broadcast update information."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6414
    return-void

    .line 6416
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6417
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

    invoke-virtual {v3, v7, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6420
    monitor-enter p0

    .line 6421
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 6422
    .local v0, "deviceOwnerPackage":Ljava/lang/String;
    if-nez v0, :cond_1

    monitor-exit p0

    .line 6423
    return-void

    .line 6426
    :cond_1
    const/4 v6, 0x0

    .line 6428
    .local v6, "receivers":[Landroid/content/pm/ActivityInfo;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 6429
    const/4 v8, 0x2

    .line 6428
    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v6, v7, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6433
    .end local v6    # "receivers":[Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v6, :cond_4

    .line 6434
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    .line 6436
    .local v4, "ident":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_3
    array-length v7, v6

    if-ge v2, v7, :cond_3

    .line 6437
    const-string/jumbo v7, "android.permission.BIND_DEVICE_ADMIN"

    aget-object v8, v6, v2

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6438
    new-instance v7, Landroid/content/ComponentName;

    .line 6439
    aget-object v8, v6, v2

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 6438
    invoke-direct {v7, v0, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6440
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6436
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6430
    .end local v2    # "i":I
    .end local v4    # "ident":J
    .restart local v6    # "receivers":[Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 6431
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string/jumbo v7, "DevicePolicyManagerService"

    const-string/jumbo v8, "Cannot find device owner package"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 6420
    .end local v0    # "deviceOwnerPackage":Ljava/lang/String;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "receivers":[Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 6444
    .restart local v0    # "deviceOwnerPackage":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "ident":J
    :cond_3
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v2    # "i":I
    .end local v4    # "ident":J
    :cond_4
    monitor-exit p0

    .line 6407
    return-void

    .line 6443
    .restart local v2    # "i":I
    .restart local v4    # "ident":J
    :catchall_1
    move-exception v7

    .line 6444
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6443
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 2065
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 2066
    return v4

    .line 2068
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2069
    monitor-enter p0

    .line 2070
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2071
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2072
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2073
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 2074
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .line 2072
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    .line 2077
    return v4

    .line 2069
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2083
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2084
    return-void

    .line 2086
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2087
    monitor-enter p0

    .line 2088
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 2089
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    monitor-exit p0

    .line 2090
    return-void

    .line 2092
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v1, v4, :cond_3

    .line 2094
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    .line 2095
    return-void

    .line 2097
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 2098
    const-string/jumbo v4, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v5, 0x0

    .line 2097
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    .line 2102
    .local v2, "ident":J
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2104
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 2082
    return-void

    .line 2103
    :catchall_0
    move-exception v1

    .line 2104
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2103
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2087
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "ident":J
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1361
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1362
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    .line 1363
    monitor-enter p0

    .line 1364
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1367
    const-string/jumbo v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    .line 1368
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    .line 1366
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1360
    :cond_0
    return-void

    .line 1363
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2341
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2342
    .local v4, "userId":I
    const/4 v1, 0x0

    .line 2344
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 2346
    const/4 v5, -0x1

    .line 2345
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2347
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    monitor-exit p0

    .line 2348
    return v6

    .line 2350
    :cond_0
    :try_start_1
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 2351
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2352
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2353
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    .line 2357
    if-eqz v1, :cond_2

    .line 2358
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    invoke-static {v5, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->-wrap0(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    .line 2359
    const/4 v5, 0x1

    return v5

    .line 2344
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    throw v5

    .line 2362
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return v6

    .line 2344
    .restart local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 5419
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5420
    monitor-enter p0

    .line 5421
    const/4 v2, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5423
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 5425
    .local v0, "id":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 5427
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 5425
    return v2

    .line 5426
    :catchall_0
    move-exception v2

    .line 5427
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5426
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5420
    .end local v0    # "id":J
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method removeUserData(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 1120
    monitor-enter p0

    .line 1121
    if-nez p1, :cond_0

    .line 1122
    :try_start_0
    const-string/jumbo v2, "DevicePolicyManagerService"

    const-string/jumbo v3, "Tried to remove device policy file for user 0! Ignoring."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1123
    return-void

    .line 1125
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v2, :cond_1

    .line 1126
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->removeProfileOwner(I)V

    .line 1127
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 1130
    :cond_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .line 1131
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_2

    .line 1132
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1134
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 1135
    const-string/jumbo v3, "device_policies.xml"

    .line 1134
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1136
    .local v1, "policyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1137
    const-string/jumbo v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removed device policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1139
    invoke-direct {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 1119
    return-void

    .line 1120
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v1    # "policyFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 10
    .param p1, "userHandle"    # I

    .prologue
    const/4 v9, 0x0

    .line 3541
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3542
    const-string/jumbo v7, "report failed password attempt"

    invoke-direct {p0, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 3543
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 3544
    const-string/jumbo v8, "android.permission.BIND_DEVICE_ADMIN"

    .line 3543
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3546
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3548
    .local v0, "ident":J
    const/4 v6, 0x0

    .line 3549
    .local v6, "wipeData":Z
    const/4 v2, 0x0

    .line 3550
    .local v2, "identifier":I
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3551
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3552
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3553
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3554
    iget-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v7, :cond_1

    .line 3556
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v5

    .line 3557
    .local v5, "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v5, :cond_3

    .line 3558
    iget v3, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 3559
    .local v3, "max":I
    :goto_0
    if-lez v3, :cond_0

    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-lt v7, v3, :cond_0

    .line 3563
    const/4 v6, 0x1

    .line 3564
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 3567
    :cond_0
    const-string/jumbo v7, "android.app.action.ACTION_PASSWORD_FAILED"

    .line 3568
    const/4 v8, 0x1

    .line 3566
    invoke-direct {p0, v7, v8, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "max":I
    .end local v5    # "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_2
    monitor-exit p0

    .line 3571
    if-eqz v6, :cond_2

    .line 3574
    const-string/jumbo v7, "reportFailedPasswordAttempt()"

    .line 3573
    const/4 v8, 0x0

    invoke-direct {p0, v8, v2, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceNoLock(ZILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3577
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3540
    return-void

    .line 3558
    .restart local v5    # "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "max":I
    goto :goto_0

    .line 3550
    .end local v3    # "max":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v5    # "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p0

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3576
    :catchall_1
    move-exception v7

    .line 3577
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3576
    throw v7
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    .line 3583
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3584
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 3585
    const-string/jumbo v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    .line 3584
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3587
    monitor-enter p0

    .line 3588
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 3589
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_0

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v3, :cond_2

    .line 3590
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3592
    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_1
    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3593
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 3594
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3595
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v3, :cond_1

    .line 3597
    const-string/jumbo v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    .line 3598
    const/4 v4, 0x1

    .line 3596
    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3601
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "ident":J
    :cond_2
    monitor-exit p0

    .line 3582
    return-void

    .line 3600
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    .line 3601
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3600
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3587
    .end local v0    # "ident":J
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public requireSecureKeyguard(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4212
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 4213
    return v4

    .line 4216
    :cond_0
    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    .line 4217
    .local v2, "passwordQuality":I
    if-lez v2, :cond_1

    .line 4218
    return v3

    .line 4221
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getStorageEncryptionStatus(I)I

    move-result v0

    .line 4222
    .local v0, "encryptionStatus":I
    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    .line 4223
    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    .line 4224
    :cond_2
    return v3

    .line 4226
    :cond_3
    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 4227
    .local v1, "keyguardDisabledFeatures":I
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_4

    :goto_0
    return v3

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .locals 37
    .param p1, "passwordOrNull"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 2840
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v34, v0

    if-nez v34, :cond_0

    .line 2841
    const/16 v34, 0x0

    return v34

    .line 2843
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v32

    .line 2844
    .local v32, "userHandle":I
    const-string/jumbo v34, "reset the password"

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 2846
    if-eqz p1, :cond_1

    move-object/from16 v25, p1

    .line 2849
    .local v25, "password":Ljava/lang/String;
    :goto_0
    monitor-enter p0

    .line 2852
    const/16 v34, 0x0

    .line 2853
    const/16 v35, 0x2

    .line 2852
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2854
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v27

    .line 2855
    .local v27, "quality":I
    if-eqz v27, :cond_3

    .line 2856
    invoke-static/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v28

    .line 2857
    .local v28, "realQuality":I
    move/from16 v0, v28

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 2858
    const/high16 v34, 0x60000

    move/from16 v0, v27

    move/from16 v1, v34

    if-eq v0, v1, :cond_2

    .line 2859
    const-string/jumbo v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "resetPassword: password quality 0x"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2860
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v36

    .line 2859
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2861
    const-string/jumbo v36, " does not meet required quality 0x"

    .line 2859
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2862
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v36

    .line 2859
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2863
    const/16 v34, 0x0

    monitor-exit p0

    return v34

    .line 2846
    .end local v25    # "password":Ljava/lang/String;
    .end local v27    # "quality":I
    .end local v28    # "realQuality":I
    :cond_1
    const-string/jumbo v25, ""

    .restart local v25    # "password":Ljava/lang/String;
    goto :goto_0

    .line 2865
    .restart local v27    # "quality":I
    .restart local v28    # "realQuality":I
    :cond_2
    :try_start_1
    move/from16 v0, v28

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 2867
    .end local v28    # "realQuality":I
    :cond_3
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v11

    .line 2868
    .local v11, "length":I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v34

    if-ge v0, v11, :cond_4

    .line 2869
    const-string/jumbo v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "resetPassword: password length "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2870
    const-string/jumbo v36, " does not meet required length "

    .line 2869
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2871
    const/16 v34, 0x0

    monitor-exit p0

    return v34

    .line 2873
    :cond_4
    const/high16 v34, 0x60000

    move/from16 v0, v27

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    .line 2874
    const/4 v14, 0x0

    .line 2875
    .local v14, "letters":I
    const/16 v31, 0x0

    .line 2876
    .local v31, "uppercase":I
    const/4 v15, 0x0

    .line 2877
    .local v15, "lowercase":I
    const/16 v24, 0x0

    .line 2878
    .local v24, "numbers":I
    const/16 v30, 0x0

    .line 2879
    .local v30, "symbols":I
    const/16 v23, 0x0

    .line 2880
    .local v23, "nonletter":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v34

    if-ge v10, v0, :cond_8

    .line 2881
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2882
    .local v6, "c":C
    const/16 v34, 0x41

    move/from16 v0, v34

    if-lt v6, v0, :cond_5

    const/16 v34, 0x5a

    move/from16 v0, v34

    if-gt v6, v0, :cond_5

    .line 2883
    add-int/lit8 v14, v14, 0x1

    .line 2884
    add-int/lit8 v31, v31, 0x1

    .line 2880
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2885
    :cond_5
    const/16 v34, 0x61

    move/from16 v0, v34

    if-lt v6, v0, :cond_6

    const/16 v34, 0x7a

    move/from16 v0, v34

    if-gt v6, v0, :cond_6

    .line 2886
    add-int/lit8 v14, v14, 0x1

    .line 2887
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2888
    :cond_6
    const/16 v34, 0x30

    move/from16 v0, v34

    if-lt v6, v0, :cond_7

    const/16 v34, 0x39

    move/from16 v0, v34

    if-gt v6, v0, :cond_7

    .line 2889
    add-int/lit8 v24, v24, 0x1

    .line 2890
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 2892
    :cond_7
    add-int/lit8 v30, v30, 0x1

    .line 2893
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 2896
    .end local v6    # "c":C
    :cond_8
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v16

    .line 2897
    .local v16, "neededLetters":I
    move/from16 v0, v16

    if-ge v14, v0, :cond_9

    .line 2898
    const-string/jumbo v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "resetPassword: number of letters "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2899
    const-string/jumbo v36, " does not meet required number of letters "

    .line 2898
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2900
    const/16 v34, 0x0

    monitor-exit p0

    return v34

    .line 2902
    :cond_9
    const/16 v34, 0x0

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v19

    .line 2903
    .local v19, "neededNumbers":I
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 2904
    const-string/jumbo v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "resetPassword: number of numerical digits "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2905
    const-string/jumbo v36, " does not meet required number of numerical digits "

    .line 2904
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2907
    const/16 v34, 0x0

    monitor-exit p0

    return v34

    .line 2909
    :cond_a
    const/16 v34, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v17

    .line 2910
    .local v17, "neededLowerCase":I
    move/from16 v0, v17

    if-ge v15, v0, :cond_b

    .line 2911
    const-string/jumbo v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "resetPassword: number of lowercase letters "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2912
    const-string/jumbo v36, " does not meet required number of lowercase letters "

    .line 2911
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2914
    const/16 v34, 0x0

    monitor-exit p0

    return v34

    .line 2916
    :cond_b
    const/16 v34, 0x0

    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v21

    .line 2917
    .local v21, "neededUpperCase":I
    move/from16 v0, v31

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 2918
    const-string/jumbo v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "resetPassword: number of uppercase letters "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2919
    const-string/jumbo v36, " does not meet required number of uppercase letters "

    .line 2918
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2921
    const/16 v34, 0x0

    monitor-exit p0

    return v34

    .line 2923
    :cond_c
    const/16 v34, 0x0

    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v20

    .line 2924
    .local v20, "neededSymbols":I
    move/from16 v0, v30

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 2925
    const-string/jumbo v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "resetPassword: number of special symbols "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2926
    const-string/jumbo v36, " does not meet required number of special symbols "

    .line 2925
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2927
    const/16 v34, 0x0

    monitor-exit p0

    return v34

    .line 2929
    :cond_d
    const/16 v34, 0x0

    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v18

    .line 2930
    .local v18, "neededNonLetter":I
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    .line 2931
    const-string/jumbo v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "resetPassword: number of non-letter characters "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2932
    const-string/jumbo v36, " does not meet required number of non-letter characters "

    .line 2931
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2934
    const/16 v34, 0x0

    monitor-exit p0

    return v34

    .end local v10    # "i":I
    .end local v14    # "letters":I
    .end local v15    # "lowercase":I
    .end local v16    # "neededLetters":I
    .end local v17    # "neededLowerCase":I
    .end local v18    # "neededNonLetter":I
    .end local v19    # "neededNumbers":I
    .end local v20    # "neededSymbols":I
    .end local v21    # "neededUpperCase":I
    .end local v23    # "nonletter":I
    .end local v24    # "numbers":I
    .end local v30    # "symbols":I
    .end local v31    # "uppercase":I
    :cond_e
    monitor-exit p0

    .line 2939
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2940
    .local v8, "callingUid":I
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v26

    .line 2941
    .local v26, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v34, v0

    if-ltz v34, :cond_f

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v0, v8, :cond_f

    .line 2942
    const-string/jumbo v34, "DevicePolicyManagerService"

    const-string/jumbo v35, "resetPassword: already set by another uid and not entered by user"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    const/16 v34, 0x0

    return v34

    .line 2849
    .end local v8    # "callingUid":I
    .end local v11    # "length":I
    .end local v26    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v27    # "quality":I
    :catchall_0
    move-exception v34

    monitor-exit p0

    throw v34

    .line 2946
    .restart local v8    # "callingUid":I
    .restart local v11    # "length":I
    .restart local v26    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v27    # "quality":I
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isCallerDeviceOwnerOrInitializer(I)Z

    move-result v7

    .line 2948
    .local v7, "callerIsDeviceOwnerAdmin":Z
    and-int/lit8 v34, p2, 0x2

    if-eqz v34, :cond_13

    const/4 v9, 0x1

    .line 2949
    .local v9, "doNotAskCredentialsOnBoot":Z
    :goto_3
    if-eqz v7, :cond_10

    if-eqz v9, :cond_10

    .line 2950
    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDoNotAskCredentialsOnBoot()V

    .line 2955
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2957
    .local v12, "ident":J
    :try_start_8
    new-instance v33, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2958
    .local v33, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_14

    .line 2959
    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    move-object/from16 v2, v34

    move/from16 v3, v27

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2963
    :goto_4
    and-int/lit8 v34, p2, 0x1

    if-eqz v34, :cond_15

    const/16 v29, 0x1

    .line 2964
    .local v29, "requireEntry":Z
    :goto_5
    if-eqz v29, :cond_11

    .line 2965
    const/16 v34, 0x2

    .line 2966
    const/16 v35, -0x1

    .line 2965
    invoke-virtual/range {v33 .. v35}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 2968
    :cond_11
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2969
    if-eqz v29, :cond_16

    move/from16 v22, v8

    .line 2970
    .local v22, "newOwner":I
    :goto_6
    :try_start_9
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    .line 2971
    move/from16 v0, v22

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 2972
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_12
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2976
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2979
    const/16 v34, 0x1

    return v34

    .line 2948
    .end local v9    # "doNotAskCredentialsOnBoot":Z
    .end local v12    # "ident":J
    .end local v22    # "newOwner":I
    .end local v29    # "requireEntry":Z
    .end local v33    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_13
    const/4 v9, 0x0

    .restart local v9    # "doNotAskCredentialsOnBoot":Z
    goto :goto_3

    .line 2961
    .restart local v12    # "ident":J
    .restart local v33    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_14
    :try_start_b
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 2975
    .end local v33    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_1
    move-exception v34

    .line 2976
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2975
    throw v34

    .line 2963
    .restart local v33    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_15
    const/16 v29, 0x0

    .restart local v29    # "requireEntry":Z
    goto :goto_5

    .line 2969
    :cond_16
    const/16 v22, -0x1

    .restart local v22    # "newOwner":I
    goto :goto_6

    .line 2968
    :catchall_2
    move-exception v34

    :try_start_c
    monitor-exit p0

    throw v34
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1302
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    .line 1306
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "adminExtras"    # Landroid/os/Bundle;
    .param p4, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v3, 0x0

    .line 1315
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1317
    const-string/jumbo v0, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    const-string/jumbo v0, "expiration"

    iget-wide v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1320
    :cond_0
    if-eqz p3, :cond_1

    .line 1321
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1323
    :cond_1
    if-eqz p4, :cond_2

    .line 1324
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1325
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v4, p4

    move-object v7, v3

    move-object v8, v3

    .line 1324
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1314
    :goto_0
    return-void

    .line 1327
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method sendAdminCommandLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1335
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1336
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1337
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 1338
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1339
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1340
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1341
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1338
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1334
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    .prologue
    .line 5723
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 5724
    return-void

    .line 5726
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5727
    monitor-enter p0

    .line 5729
    const/4 v1, -0x1

    .line 5728
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5730
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz p3, :cond_1

    .line 5731
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5735
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 5722
    return-void

    .line 5733
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5727
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 1953
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 1954
    return-void

    .line 1956
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V

    .line 1952
    return-void
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .locals 6
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "numbers"    # I
    .param p7, "symbols"    # I
    .param p8, "nonletter"    # I
    .param p9, "userHandle"    # I

    .prologue
    .line 3472
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 3473
    return-void

    .line 3475
    :cond_0
    invoke-direct {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3476
    const-string/jumbo v3, "set the active password"

    invoke-direct {p0, p9, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 3478
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 3479
    const-string/jumbo v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    .line 3478
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    invoke-virtual {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 3482
    .local v2, "p":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 3484
    monitor-enter p0

    .line 3485
    :try_start_0
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-ne v3, p1, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-eq v3, p2, :cond_3

    .line 3492
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3494
    .local v0, "ident":J
    :try_start_1
    iput p1, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 3495
    iput p2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 3496
    iput p3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 3497
    iput p5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 3498
    iput p4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 3499
    iput p6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 3500
    iput p7, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 3501
    iput p8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 3502
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3503
    invoke-direct {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3504
    invoke-direct {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordExpirationsLocked(I)V

    .line 3505
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3507
    const-string/jumbo v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    .line 3508
    const/4 v4, 0x0

    .line 3506
    invoke-direct {p0, v3, v4, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3510
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "ident":J
    :cond_2
    monitor-exit p0

    .line 3471
    return-void

    .line 3486
    :cond_3
    :try_start_3
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-ne v3, p3, :cond_1

    .line 3487
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-ne v3, p4, :cond_1

    .line 3488
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-ne v3, p5, :cond_1

    .line 3489
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-ne v3, p6, :cond_1

    .line 3490
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-ne v3, p7, :cond_1

    .line 3491
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eq v3, p8, :cond_2

    goto :goto_0

    .line 3509
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    .line 3510
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3509
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3484
    .end local v0    # "ident":J
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    .prologue
    .line 5574
    const-string/jumbo v5, "ComponentName is null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5575
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5576
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 5577
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5579
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 5581
    .local v2, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 5582
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p2, p3, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 5587
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 5582
    return v5

    .line 5583
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v4

    .line 5585
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "DevicePolicyManagerService"

    const-string/jumbo v6, "Failed to setApplicationHiddenSetting"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5587
    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5589
    const/4 v5, 0x0

    monitor-exit p0

    return v5

    .line 5586
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 5587
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5586
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5576
    .end local v2    # "id":J
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;

    .prologue
    .line 4885
    const-string/jumbo v3, "ComponentName is null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4886
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 4887
    .local v2, "userHandle":Landroid/os/UserHandle;
    monitor-enter p0

    .line 4888
    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4890
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 4892
    .local v0, "id":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p2, p3, v2}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4894
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 4884
    return-void

    .line 4893
    :catchall_0
    move-exception v3

    .line 4894
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4893
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4887
    .end local v0    # "id":J
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z

    .prologue
    .line 3947
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 3948
    return-void

    .line 3950
    :cond_0
    const-string/jumbo v4, "ComponentName is null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3951
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3952
    .local v1, "userHandle":I
    monitor-enter p0

    .line 3954
    const/4 v4, -0x2

    .line 3953
    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3955
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    if-eq v4, p2, :cond_1

    .line 3956
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    .line 3957
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 3962
    if-eqz p2, :cond_2

    .line 3963
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3965
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3966
    const-string/jumbo v5, "auto_time"

    const/4 v6, 0x1

    .line 3965
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3968
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3946
    .end local v2    # "ident":J
    :cond_2
    return-void

    .line 3952
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 3967
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v4

    .line 3968
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3967
    throw v4
.end method

.method public setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    .line 5903
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 5904
    return-void

    .line 5906
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5907
    monitor-enter p0

    .line 5909
    const/4 v1, -0x1

    .line 5908
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5910
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    if-eq v1, p2, :cond_1

    .line 5911
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 5912
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 5902
    return-void

    .line 5907
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    .line 3999
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 4000
    return-void

    .line 4002
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4003
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4004
    .local v1, "userHandle":I
    monitor-enter p0

    .line 4006
    const/16 v2, 0x8

    .line 4005
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4007
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eq v2, p2, :cond_1

    .line 4008
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 4009
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 4011
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3998
    return-void

    .line 4004
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3308
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3309
    .local v1, "userHandle":I
    monitor-enter p0

    .line 3310
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3311
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 3312
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    .line 3313
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3307
    return-void

    .line 3309
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    .line 5811
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 5812
    return-void

    .line 5814
    :cond_0
    const-string/jumbo v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5815
    monitor-enter p0

    .line 5817
    const/4 v1, -0x1

    .line 5816
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5818
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    if-eq v1, p2, :cond_1

    .line 5819
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    .line 5820
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 5810
    return-void

    .line 5815
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setDeviceInitializer(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "initializer"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 4285
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 4286
    return v3

    .line 4288
    :cond_0
    if-eqz p2, :cond_1

    .line 4289
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4288
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4295
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 4296
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 4295
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4301
    :goto_0
    if-nez v1, :cond_2

    .line 4302
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Only system app can be set as device initializer."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4290
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid component name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4291
    const-string/jumbo v4, " for device initializer"

    .line 4290
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4297
    :catch_0
    move-exception v0

    .line 4298
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 4299
    .local v1, "isInitializerSystemApp":Z
    const-string/jumbo v2, "DevicePolicyManagerService"

    const-string/jumbo v3, "Fail to check if device initialzer is system app."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4304
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "isInitializerSystemApp":Z
    :cond_2
    monitor-enter p0

    .line 4305
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanSetDeviceInitializer(Landroid/content/ComponentName;)V

    .line 4307
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceInitializer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4308
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 4309
    const-string/jumbo v3, "Trying to set device initializer but device initializer is already set."

    .line 4308
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4304
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 4312
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-nez v2, :cond_4

    .line 4314
    invoke-static {p2}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithDeviceInitializer(Landroid/content/ComponentName;)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    .line 4320
    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->addDeviceInitializerToLockTaskPackagesLocked(I)V

    .line 4321
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4322
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 4317
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->setDeviceInitializer(Landroid/content/ComponentName;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 4126
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 4127
    return v6

    .line 4129
    :cond_0
    if-eqz p1, :cond_1

    .line 4130
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4134
    monitor-enter p0

    .line 4135
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanSetDeviceOwner()V

    .line 4138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 4141
    .local v2, "ident":J
    :try_start_1
    const-string/jumbo v5, "backup"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 4140
    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 4142
    .local v1, "ibm":Landroid/app/backup/IBackupManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/app/backup/IBackupManager;->setBackupServiceActive(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4146
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4149
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-nez v5, :cond_2

    .line 4151
    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    .line 4156
    :goto_0
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 4157
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateDeviceOwnerLocked()V

    .line 4158
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4160
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    .line 4162
    :try_start_3
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4164
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4166
    const/4 v5, 0x1

    monitor-exit p0

    return v5

    .line 4131
    .end local v1    # "ibm":Landroid/app/backup/IBackupManager;
    .end local v2    # "ident":J
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid package name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4132
    const-string/jumbo v7, " for device owner"

    .line 4131
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4143
    .restart local v2    # "ident":J
    :catch_0
    move-exception v0

    .line 4144
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Failed deactivating backup service."

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4145
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 4146
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4145
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4134
    .end local v2    # "ident":J
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 4154
    .restart local v1    # "ibm":Landroid/app/backup/IBackupManager;
    .restart local v2    # "ident":J
    :cond_2
    :try_start_7
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4163
    .restart local v4    # "intent":Landroid/content/Intent;
    :catchall_2
    move-exception v5

    .line 4164
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4163
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1154
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v12

    .line 1155
    .local v12, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1156
    .local v14, "now":J
    sub-long v16, v12, v14

    .line 1158
    .local v16, "timeToExpire":J
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-nez v20, :cond_1

    .line 1160
    const-wide/16 v8, 0x0

    .line 1174
    .local v8, "alarmTime":J
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1176
    .local v18, "token":J
    :try_start_0
    const-string/jumbo v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 1178
    .local v10, "am":Landroid/app/AlarmManager;
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v21, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    new-instance v21, Landroid/os/UserHandle;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/os/UserHandle;-><init>(I)V

    .line 1177
    const/16 v22, 0x15c3

    .line 1179
    const/high16 v23, 0x48000000    # 131072.0f

    .line 1177
    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v20

    move/from16 v3, v23

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1181
    .local v11, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1182
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_0

    .line 1183
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0, v8, v9, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    :cond_0
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1153
    return-void

    .line 1161
    .end local v8    # "alarmTime":J
    .end local v10    # "am":Landroid/app/AlarmManager;
    .end local v11    # "pi":Landroid/app/PendingIntent;
    .end local v18    # "token":J
    :cond_1
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-gtz v20, :cond_2

    .line 1163
    const-wide/32 v20, 0x5265c00

    add-long v8, v14, v20

    .restart local v8    # "alarmTime":J
    goto :goto_0

    .line 1167
    .end local v8    # "alarmTime":J
    :cond_2
    const-wide/32 v20, 0x5265c00

    rem-long v6, v16, v20

    .line 1168
    .local v6, "alarmInterval":J
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-nez v20, :cond_3

    .line 1169
    const-wide/32 v6, 0x5265c00

    .line 1171
    :cond_3
    add-long v8, v14, v6

    .restart local v8    # "alarmTime":J
    goto :goto_0

    .line 1185
    .end local v6    # "alarmInterval":J
    .restart local v18    # "token":J
    :catchall_0
    move-exception v20

    .line 1186
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1185
    throw v20
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 3610
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 3611
    return-object v11

    .line 3613
    :cond_0
    monitor-enter p0

    .line 3614
    :try_start_0
    const-string/jumbo v8, "ComponentName is null"

    invoke-static {p1, v8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3617
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 3619
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v8, 0x5

    .line 3618
    invoke-virtual {p0, p1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3623
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 3624
    .local v2, "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "component$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 3625
    .local v3, "component":Landroid/content/ComponentName;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3626
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v8, :cond_1

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    monitor-exit p0

    .line 3629
    return-object v3

    .line 3634
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eqz v8, :cond_3

    .line 3635
    const-string/jumbo v8, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Only the owner is allowed to set the global proxy. User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3636
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 3635
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3636
    const-string/jumbo v10, " is not permitted."

    .line 3635
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 3637
    return-object v11

    .line 3639
    :cond_3
    if-nez p2, :cond_4

    .line 3640
    const/4 v8, 0x0

    :try_start_2
    iput-boolean v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 3641
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 3642
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 3652
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    .line 3654
    .local v6, "origId":J
    :try_start_3
    invoke-direct {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3656
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 3658
    return-object v11

    .line 3645
    .end local v6    # "origId":J
    :cond_4
    const/4 v8, 0x1

    :try_start_5
    iput-boolean v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 3646
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 3647
    iput-object p3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 3613
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v4    # "component$iterator":Ljava/util/Iterator;
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 3655
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v4    # "component$iterator":Ljava/util/Iterator;
    .restart local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v6    # "origId":J
    :catchall_1
    move-exception v8

    .line 3656
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3655
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 6039
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6040
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6042
    monitor-enter p0

    .line 6043
    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6047
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6048
    const-string/jumbo v1, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Global setting no longer supported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 6049
    return-void

    .line 6052
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6053
    new-instance v1, Ljava/lang/SecurityException;

    .line 6054
    const-string/jumbo v6, "Permission denial: device owners cannot update %1$s"

    .line 6053
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 6054
    const/4 v8, 0x0

    aput-object p2, v7, v8

    .line 6053
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6042
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 6057
    :cond_1
    :try_start_2
    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6059
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    .line 6060
    .local v4, "timeMs":J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    monitor-exit p0

    .line 6061
    return-void

    .line 6065
    .end local v4    # "timeMs":J
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v2

    .line 6067
    .local v2, "id":J
    :try_start_4
    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6069
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 6038
    return-void

    .line 6068
    :catchall_1
    move-exception v1

    .line 6069
    :try_start_6
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 6068
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    .line 6152
    const-string/jumbo v4, "ComponentName is null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6153
    monitor-enter p0

    .line 6154
    const/4 v4, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 6156
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 6157
    .local v2, "userId":I
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 6159
    .local v3, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6162
    .local v0, "ident":J
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_0

    .line 6163
    const/4 v4, 0x0

    .line 6167
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6163
    return v4

    .line 6153
    .end local v0    # "ident":J
    .end local v2    # "userId":I
    .end local v3    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 6165
    .restart local v0    # "ident":J
    .restart local v2    # "userId":I
    .restart local v3    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :try_start_2
    invoke-virtual {v3, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6167
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6169
    const/4 v4, 0x1

    return v4

    .line 6166
    :catchall_1
    move-exception v4

    .line 6167
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6166
    throw v4
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I

    .prologue
    .line 4048
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 4049
    return-void

    .line 4051
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4052
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4053
    .local v1, "userHandle":I
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4054
    and-int/lit8 p2, p2, 0x38

    .line 4056
    :cond_1
    monitor-enter p0

    .line 4058
    const/16 v2, 0x9

    .line 4057
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4059
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eq v2, p2, :cond_2

    .line 4060
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    .line 4061
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 4063
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 4047
    return-void

    .line 4056
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5950
    const-string/jumbo v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5951
    monitor-enter p0

    .line 5952
    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5954
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 5955
    .local v0, "userHandle":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setLockTaskPackagesLocked(ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 5949
    return-void

    .line 5951
    .end local v0    # "userHandle":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .prologue
    .line 6105
    const-string/jumbo v5, "ComponentName is null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6106
    monitor-enter p0

    .line 6107
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6108
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 6109
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 6112
    .local v2, "identity":J
    :try_start_1
    const-string/jumbo v5, "audio"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 6111
    invoke-static {v5}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 6113
    .local v0, "iAudioService":Landroid/media/IAudioService;
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, p2, v6, v5, v4}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6117
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "iAudioService":Landroid/media/IAudioService;
    :goto_0
    monitor-exit p0

    .line 6104
    return-void

    .line 6114
    :catch_0
    move-exception v1

    .line 6115
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "DevicePolicyManagerService"

    const-string/jumbo v6, "Failed to setMasterMute"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6117
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 6106
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "identity":J
    .end local v4    # "userId":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 6116
    .restart local v2    # "identity":J
    .restart local v4    # "userId":I
    :catchall_1
    move-exception v5

    .line 6117
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6116
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "num"    # I

    .prologue
    .line 2765
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2766
    return-void

    .line 2768
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2769
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2770
    .local v1, "userHandle":I
    monitor-enter p0

    .line 2774
    const/4 v2, 0x4

    .line 2773
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2776
    const/4 v2, 0x1

    .line 2775
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2777
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v2, p2, :cond_1

    .line 2778
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 2779
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 2764
    return-void

    .line 2770
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J

    .prologue
    .line 3004
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 3005
    return-void

    .line 3007
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3009
    .local v1, "userHandle":I
    monitor-enter p0

    .line 3011
    const/4 v2, 0x3

    .line 3010
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3012
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-wide v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 3013
    iput-wide p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 3014
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3015
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 3003
    return-void

    .line 3009
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 2254
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 2255
    return-void

    .line 2257
    :cond_0
    const-string/jumbo v4, "ComponentName is null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    const-string/jumbo v4, "Timeout must be >= 0 ms"

    invoke-static {p2, p3, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    .line 2259
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2260
    .local v1, "userHandle":I
    monitor-enter p0

    .line 2262
    const/4 v4, 0x6

    .line 2261
    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2264
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v4, p2, v6

    if-lez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v2, p2, v4

    .line 2265
    .local v2, "expiration":J
    :goto_0
    iput-wide v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2266
    iput-wide p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 2267
    cmp-long v4, p2, v6

    if-lez v4, :cond_1

    .line 2268
    const-string/jumbo v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPasswordExpiration(): password will expire on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2269
    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-static {v6, v7}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v6

    .line 2270
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 2269
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 2268
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2274
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2253
    return-void

    .line 2264
    .end local v2    # "expiration":J
    :cond_2
    const-wide/16 v2, 0x0

    .restart local v2    # "expiration":J
    goto :goto_0

    .line 2260
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "expiration":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 2207
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2208
    return-void

    .line 2210
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2212
    .local v1, "userHandle":I
    monitor-enter p0

    .line 2214
    const/4 v2, 0x0

    .line 2213
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2215
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v2, p2, :cond_1

    .line 2216
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 2217
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 2206
    return-void

    .line 2212
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 2160
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2161
    return-void

    .line 2163
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2165
    .local v1, "userHandle":I
    monitor-enter p0

    .line 2167
    const/4 v2, 0x0

    .line 2166
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2168
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v2, p2, :cond_1

    .line 2169
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 2170
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 2159
    return-void

    .line 2165
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 2513
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2514
    return-void

    .line 2516
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2517
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2518
    .local v1, "userHandle":I
    monitor-enter p0

    .line 2520
    const/4 v2, 0x0

    .line 2519
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2521
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-eq v2, p2, :cond_1

    .line 2522
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 2523
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 2512
    return-void

    .line 2518
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 2469
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2470
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2471
    .local v1, "userHandle":I
    monitor-enter p0

    .line 2473
    const/4 v2, 0x0

    .line 2472
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2474
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eq v2, p2, :cond_0

    .line 2475
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 2476
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 2468
    return-void

    .line 2471
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 2663
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2664
    return-void

    .line 2666
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2668
    .local v1, "userHandle":I
    monitor-enter p0

    .line 2670
    const/4 v2, 0x0

    .line 2669
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2671
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-eq v2, p2, :cond_1

    .line 2672
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 2673
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 2662
    return-void

    .line 2668
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 2563
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2564
    return-void

    .line 2566
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2567
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2568
    .local v1, "userHandle":I
    monitor-enter p0

    .line 2570
    const/4 v2, 0x0

    .line 2569
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2571
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-eq v2, p2, :cond_1

    .line 2572
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 2573
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 2562
    return-void

    .line 2568
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 2613
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2614
    return-void

    .line 2616
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2617
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2618
    .local v1, "userHandle":I
    monitor-enter p0

    .line 2620
    const/4 v2, 0x0

    .line 2619
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2621
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-eq v2, p2, :cond_1

    .line 2622
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 2623
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 2612
    return-void

    .line 2618
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 2422
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2423
    return-void

    .line 2425
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2427
    .local v1, "userHandle":I
    monitor-enter p0

    .line 2429
    const/4 v2, 0x0

    .line 2428
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2430
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eq v2, p2, :cond_1

    .line 2431
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 2432
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 2421
    return-void

    .line 2427
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I

    .prologue
    .line 2111
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2112
    return-void

    .line 2114
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2116
    .local v1, "userHandle":I
    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 2118
    monitor-enter p0

    .line 2120
    const/4 v2, 0x0

    .line 2119
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2121
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v2, p2, :cond_1

    .line 2122
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 2123
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 2110
    return-void

    .line 2118
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "grantState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6475
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 6476
    .local v5, "user":Landroid/os/UserHandle;
    monitor-enter p0

    .line 6477
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6478
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 6480
    .local v8, "ident":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 6481
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    .line 6480
    invoke-interface {v1, p2, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 6482
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_0

    const/4 v11, 0x0

    .line 6483
    .local v11, "targetSdkVersion":I
    :goto_0
    const/16 v1, 0x17

    if-ge v11, v1, :cond_1

    .line 6518
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6484
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 6482
    .end local v11    # "targetSdkVersion":I
    :cond_0
    :try_start_3
    iget v11, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .restart local v11    # "targetSdkVersion":I
    goto :goto_0

    .line 6486
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isRuntimePermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6487
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "62623498"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x534e4554

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6518
    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6488
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 6490
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 6491
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    packed-switch p4, :pswitch_data_0

    .line 6518
    :goto_1
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 6512
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 6493
    :pswitch_0
    :try_start_7
    invoke-virtual {v0, p2, p3, v5}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 6495
    const/4 v3, 0x4

    .line 6496
    const/4 v4, 0x4

    move-object v1, p3

    move-object v2, p2

    .line 6494
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 6513
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "targetSdkVersion":I
    :catch_0
    move-exception v10

    .line 6518
    .local v10, "se":Ljava/lang/SecurityException;
    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 6514
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 6500
    .end local v10    # "se":Ljava/lang/SecurityException;
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "targetSdkVersion":I
    :pswitch_1
    :try_start_9
    invoke-virtual {v0, p2, p3, v5}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 6503
    const/4 v3, 0x4

    .line 6504
    const/4 v4, 0x4

    move-object v1, p3

    move-object v2, p2

    .line 6502
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 6515
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "targetSdkVersion":I
    :catch_1
    move-exception v7

    .line 6518
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 6516
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 6509
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "targetSdkVersion":I
    :pswitch_2
    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v1, p3

    move-object v2, p2

    .line 6508
    :try_start_b
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 6517
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "targetSdkVersion":I
    :catchall_0
    move-exception v1

    .line 6518
    :try_start_c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6517
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 6476
    .end local v8    # "ident":J
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 6491
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPermissionPolicy(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6452
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 6453
    .local v0, "userId":I
    monitor-enter p0

    .line 6454
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6455
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    .line 6456
    .local v1, "userPolicy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    if-eq v2, p2, :cond_0

    .line 6457
    iput p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    .line 6458
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 6451
    return-void

    .line 6453
    .end local v1    # "userPolicy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;

    .prologue
    const/4 v12, 0x0

    .line 5097
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v10, :cond_0

    .line 5098
    return v12

    .line 5100
    :cond_0
    const-string/jumbo v10, "ComponentName is null"

    invoke-static {p1, v10}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5102
    if-eqz p2, :cond_3

    .line 5103
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 5104
    .local v9, "userId":I
    const/4 v3, 0x0

    .line 5105
    .local v3, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5107
    .local v4, "id":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 5108
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5109
    iget v9, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 5111
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 5113
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v10, -0x1

    .line 5112
    invoke-virtual {v0, v10}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 5115
    .local v3, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5118
    if-eqz v3, :cond_3

    .line 5119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5120
    .local v2, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 5121
    .local v6, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5114
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v7    # "service$iterator":Ljava/util/Iterator;
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .local v3, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :catchall_0
    move-exception v10

    .line 5115
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5114
    throw v10

    .line 5123
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v7    # "service$iterator":Ljava/util/Iterator;
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 5124
    const-string/jumbo v10, "DevicePolicyManagerService"

    const-string/jumbo v11, "Cannot set permitted accessibility services, because it contains already enabled accesibility services."

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5126
    return v12

    .line 5131
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v4    # "id":J
    .end local v7    # "service$iterator":Ljava/util/Iterator;
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userId":I
    :cond_3
    monitor-enter p0

    .line 5133
    const/4 v10, -0x1

    .line 5132
    :try_start_1
    invoke-virtual {p0, p1, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 5134
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iput-object p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    .line 5135
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 5137
    const/4 v10, 0x1

    return v10

    .line 5131
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_1
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;

    .prologue
    const/4 v8, 0x0

    .line 5247
    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_0

    .line 5248
    return v8

    .line 5250
    :cond_0
    const-string/jumbo v6, "ComponentName is null"

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5254
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkCallerIsCurrentUserOrProfile()Z

    move-result v6

    if-nez v6, :cond_1

    .line 5255
    return v8

    .line 5258
    :cond_1
    if-eqz p2, :cond_3

    .line 5262
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 5263
    const-string/jumbo v7, "input_method"

    .line 5262
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 5264
    .local v5, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 5266
    .local v1, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v1, :cond_3

    .line 5267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5268
    .local v2, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ime$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 5269
    .local v3, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5271
    .end local v3    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 5272
    const-string/jumbo v6, "DevicePolicyManagerService"

    const-string/jumbo v7, "Cannot set permitted input methods, because it contains already enabled input method."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5274
    return v8

    .line 5279
    .end local v1    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "ime$iterator":Ljava/util/Iterator;
    .end local v5    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    monitor-enter p0

    .line 5281
    const/4 v6, -0x1

    .line 5280
    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5282
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 5283
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 5285
    const/4 v6, 0x1

    return v6

    .line 5279
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4557
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 4558
    return-void

    .line 4560
    :cond_0
    const-string/jumbo v5, "ComponentName is null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4561
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 4562
    .local v3, "userHandle":I
    monitor-enter p0

    .line 4564
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4565
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 4567
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 4569
    .local v0, "id":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->setUserEnabled(I)V

    .line 4570
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4571
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.extra.USER"

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4572
    const/high16 v5, 0x50000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4575
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4577
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 4556
    return-void

    .line 4576
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    .line 4577
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4576
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4562
    .end local v0    # "id":J
    .end local v4    # "userId":I
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4584
    const-string/jumbo v3, "ComponentName is null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4585
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 4587
    .local v2, "userId":I
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4589
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4591
    .local v0, "id":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2, p2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4593
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4583
    return-void

    .line 4592
    :catchall_0
    move-exception v3

    .line 4593
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4592
    throw v3
.end method

.method public setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 4411
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 4412
    const/4 v0, 0x0

    return v0

    .line 4414
    :cond_0
    if-eqz p1, :cond_1

    .line 4415
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalledForUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4419
    monitor-enter p0

    .line 4420
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanSetProfileOwner(I)V

    .line 4421
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-nez v0, :cond_2

    .line 4423
    invoke-static {p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    .line 4429
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4430
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 4416
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4417
    const-string/jumbo v2, " not installed for userId:"

    .line 4416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4427
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;

    .prologue
    .line 3688
    monitor-enter p0

    .line 3689
    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3691
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3694
    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3693
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3695
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3697
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3687
    return-void

    .line 3688
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "token":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3696
    .restart local v2    # "token":J
    :catchall_1
    move-exception v1

    .line 3697
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3696
    throw v1
.end method

.method public setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "permissionProvider"    # Landroid/content/ComponentName;

    .prologue
    .line 4978
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4979
    monitor-enter p0

    .line 4980
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4982
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4983
    .local v1, "userHandle":I
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 4984
    .local v0, "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    .line 4985
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 4977
    return-void

    .line 4979
    .end local v0    # "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v1    # "userHandle":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    .line 3888
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 3889
    return-void

    .line 3891
    :cond_0
    const-string/jumbo v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3892
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3893
    .local v1, "userHandle":I
    monitor-enter p0

    .line 3895
    const/4 v2, -0x1

    .line 3894
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3896
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    if-eq v2, p2, :cond_1

    .line 3897
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    .line 3898
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3899
    invoke-direct {p0, v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 3887
    return-void

    .line 3893
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 6076
    const-string/jumbo v3, "ComponentName is null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6077
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 6078
    .local v1, "callingUserId":I
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6080
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 6082
    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 6084
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6085
    sget-object v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6086
    new-instance v3, Ljava/lang/SecurityException;

    .line 6087
    const-string/jumbo v6, "Permission denial: Device owners cannot update %1$s"

    .line 6086
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 6087
    const/4 v8, 0x0

    aput-object p2, v7, v8

    .line 6086
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6080
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 6089
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6090
    new-instance v3, Ljava/lang/SecurityException;

    .line 6091
    const-string/jumbo v6, "Permission denial: Profile owners cannot update %1$s"

    .line 6090
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 6091
    const/4 v8, 0x0

    aput-object p2, v7, v8

    .line 6090
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6094
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 6096
    .local v4, "id":J
    :try_start_2
    invoke-static {v2, p2, p3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6098
    :try_start_3
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 6075
    return-void

    .line 6097
    :catchall_1
    move-exception v3

    .line 6098
    :try_start_4
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 6097
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    .line 6174
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 6175
    .local v1, "userId":I
    monitor-enter p0

    .line 6176
    const/4 v2, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6177
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 6178
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    if-eq v2, p2, :cond_1

    .line 6179
    invoke-direct {p0, p2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setStatusBarDisabledInternal(ZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 6180
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 6182
    :cond_0
    :try_start_1
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    .line 6183
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 6186
    const/4 v2, 0x1

    return v2

    .line 6175
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z

    .prologue
    const/4 v9, 0x0

    .line 3750
    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_0

    .line 3751
    return v9

    .line 3753
    :cond_0
    const-string/jumbo v6, "ComponentName is null"

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3754
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 3755
    .local v5, "userHandle":I
    monitor-enter p0

    .line 3758
    if-nez v5, :cond_1

    .line 3759
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-eqz v6, :cond_2

    .line 3760
    :cond_1
    const-string/jumbo v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Only owner is allowed to set storage encryption. User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3761
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 3760
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3761
    const-string/jumbo v8, " is not permitted."

    .line 3760
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3762
    return v9

    .line 3766
    :cond_2
    const/4 v6, 0x7

    .line 3765
    :try_start_1
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3769
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isEncryptionSupported()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    monitor-exit p0

    .line 3770
    return v9

    .line 3774
    :cond_3
    :try_start_2
    iget-boolean v6, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eq v6, p2, :cond_4

    .line 3775
    iput-boolean p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 3776
    invoke-direct {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3779
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3781
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 3782
    .local v3, "newRequested":Z
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3783
    .local v0, "N":I
    const/4 v2, 0x0

    .end local v3    # "newRequested":Z
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 3784
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    or-int/2addr v3, v6

    .line 3783
    .local v3, "newRequested":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3788
    .end local v3    # "newRequested":Z
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setEncryptionRequested(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3791
    if-eqz v3, :cond_6

    .line 3792
    const/4 v6, 0x3

    :goto_1
    monitor-exit p0

    .line 3791
    return v6

    .line 3793
    :cond_6
    const/4 v6, 0x1

    goto :goto_1

    .line 3755
    .end local v0    # "N":I
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/SystemUpdatePolicy;

    .prologue
    .line 6361
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/admin/SystemUpdatePolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6364
    :cond_0
    monitor-enter p0

    .line 6365
    const/4 v0, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6366
    if-nez p2, :cond_2

    .line 6367
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->clearSystemUpdatePolicy()V

    .line 6371
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 6373
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 6374
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.action.SYSTEM_UPDATE_POLICY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6375
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 6373
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6360
    return-void

    .line 6362
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid system update policy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6369
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->setSystemUpdatePolicy(Landroid/app/admin/SystemUpdatePolicy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "args"    # Landroid/os/PersistableBundle;

    .prologue
    .line 4902
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 4903
    return-void

    .line 4905
    :cond_0
    const-string/jumbo v2, "admin is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4906
    const-string/jumbo v2, "agent is null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4907
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4908
    .local v1, "userHandle":I
    const-string/jumbo v2, "set trust agent configuration"

    invoke-direct {p0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 4909
    monitor-enter p0

    .line 4911
    const/16 v2, 0x9

    .line 4910
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4912
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    invoke-direct {v4, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4913
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 4914
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 4901
    return-void

    .line 4909
    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uninstallBlocked"    # Z

    .prologue
    .line 5765
    const-string/jumbo v5, "ComponentName is null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5766
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 5767
    .local v4, "userId":I
    monitor-enter p0

    .line 5768
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5770
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 5772
    .local v0, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 5773
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, p3, v4}, Landroid/content/pm/IPackageManager;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5778
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    monitor-exit p0

    .line 5764
    return-void

    .line 5774
    :catch_0
    move-exception v3

    .line 5776
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "DevicePolicyManagerService"

    const-string/jumbo v6, "Failed to setBlockUninstallForUser"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5778
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 5767
    .end local v0    # "id":J
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 5777
    .restart local v0    # "id":J
    :catchall_1
    move-exception v5

    .line 5778
    :try_start_5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5777
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setUserEnabled(Landroid/content/ComponentName;)Z
    .locals 11
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4512
    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_0

    .line 4513
    return v10

    .line 4515
    :cond_0
    monitor-enter p0

    .line 4516
    if-nez p1, :cond_1

    .line 4517
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "ComponentName is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4515
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 4519
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 4522
    .local v5, "userId":I
    const/4 v6, -0x1

    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4523
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4524
    new-instance v6, Ljava/lang/SecurityException;

    .line 4525
    const-string/jumbo v7, "This method can only be called by device initializers"

    .line 4524
    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4528
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 4530
    .local v2, "id":J
    :try_start_2
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 4531
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 4533
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x2

    .line 4534
    const/4 v7, 0x1

    .line 4532
    invoke-interface {v4, p1, v6, v7, v5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 4536
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 4539
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    :cond_3
    if-nez v5, :cond_4

    .line 4540
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 4541
    const-string/jumbo v7, "device_provisioned"

    const/4 v8, 0x1

    .line 4540
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4543
    :cond_4
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 4544
    const-string/jumbo v7, "user_setup_complete"

    const/4 v8, 0x1

    .line 4543
    invoke-static {v6, v7, v8, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4549
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 4551
    return v9

    .line 4545
    :catch_0
    move-exception v1

    .line 4546
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v6, "DevicePolicyManagerService"

    const-string/jumbo v7, "Can\'t talk to package manager"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4549
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 4547
    return v10

    .line 4548
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    .line 4549
    :try_start_6
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4548
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 6136
    monitor-enter p0

    .line 6137
    :try_start_0
    const-string/jumbo v3, "ComponentName is null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6138
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6140
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 6141
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 6143
    .local v0, "id":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2, p2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6145
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 6135
    return-void

    .line 6144
    :catchall_0
    move-exception v3

    .line 6145
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 6144
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6136
    .end local v0    # "id":J
    .end local v2    # "userId":I
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 22
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    .line 5476
    const-string/jumbo v18, "ComponentName is null"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5477
    new-instance v14, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 5478
    .local v14, "user":Landroid/os/UserHandle;
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 5479
    .local v15, "userHandle":I
    monitor-enter p0

    .line 5481
    const/16 v18, -0x1

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v4

    .line 5482
    .local v4, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v7

    .line 5483
    .local v7, "isDeviceOwner":Z
    if-nez v7, :cond_0

    if-eqz v15, :cond_0

    .line 5484
    sget-object v18, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    .line 5483
    if-eqz v18, :cond_0

    .line 5485
    new-instance v18, Ljava/lang/SecurityException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Profile owners cannot set user restriction "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5479
    .end local v4    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v7    # "isDeviceOwner":Z
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 5487
    .restart local v4    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v7    # "isDeviceOwner":Z
    :cond_0
    :try_start_1
    sget-object v18, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->IMMUTABLE_USER_RESTRICTIONS:Ljava/util/Set;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 5488
    new-instance v18, Ljava/lang/SecurityException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "User restriction "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " cannot be changed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 5490
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    .line 5492
    .local v5, "alreadyRestricted":Z
    const/4 v6, 0x0

    .line 5493
    .local v6, "iAudioService":Landroid/media/IAudioService;
    const-string/jumbo v18, "no_unmute_microphone"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 5494
    const-string/jumbo v18, "no_adjust_volume"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 5493
    if-eqz v18, :cond_3

    .line 5496
    :cond_2
    const-string/jumbo v18, "audio"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    .line 5495
    invoke-static/range {v18 .. v18}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v6

    .line 5499
    .end local v6    # "iAudioService":Landroid/media/IAudioService;
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 5501
    .local v8, "id":J
    if-eqz p3, :cond_4

    if-eqz v5, :cond_7

    .line 5539
    :cond_4
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v14}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 5540
    move/from16 v0, p3

    if-eq v0, v5, :cond_5

    .line 5541
    const-string/jumbo v18, "no_share_location"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 5544
    const-string/jumbo v11, "sys.settings_secure_version"

    .line 5545
    .local v11, "property":Ljava/lang/String;
    const-string/jumbo v18, "sys.settings_secure_version"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v20, 0x1

    add-long v16, v18, v20

    .line 5546
    .local v16, "version":J
    const-string/jumbo v18, "sys.settings_secure_version"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5548
    const-string/jumbo v10, "location_providers_allowed"

    .line 5549
    .local v10, "name":Ljava/lang/String;
    sget-object v18, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v19, "location_providers_allowed"

    invoke-static/range {v18 .. v19}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 5550
    .local v13, "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 5553
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "property":Ljava/lang/String;
    .end local v13    # "url":Landroid/net/Uri;
    .end local v16    # "version":J
    :cond_5
    if-nez p3, :cond_6

    if-eqz v5, :cond_6

    .line 5554
    const-string/jumbo v18, "no_unmute_microphone"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 5555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v6, v0, v1, v15}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5565
    :cond_6
    :goto_1
    :try_start_3
    invoke-static {v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5567
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendChangedNotification(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 5475
    return-void

    .line 5502
    :cond_7
    :try_start_4
    const-string/jumbo v18, "no_unmute_microphone"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 5503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v6, v0, v1, v15}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V

    .line 5509
    :cond_8
    :goto_3
    const-string/jumbo v18, "no_config_wifi"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 5510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 5511
    const-string/jumbo v19, "wifi_networks_available_notification_on"

    const/16 v20, 0x0

    .line 5510
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 5562
    :catch_0
    move-exception v12

    .line 5563
    .local v12, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v18, "DevicePolicyManagerService"

    const-string/jumbo v19, "Failed to talk to AudioService."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5565
    :try_start_6
    invoke-static {v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 5505
    .end local v12    # "re":Landroid/os/RemoteException;
    :cond_9
    :try_start_7
    const-string/jumbo v18, "no_adjust_volume"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 5506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-interface {v6, v0, v1, v2, v15}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 5564
    :catchall_1
    move-exception v18

    .line 5565
    :try_start_8
    invoke-static {v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5564
    throw v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 5513
    :cond_a
    :try_start_9
    const-string/jumbo v18, "no_share_location"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 5514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 5515
    const-string/jumbo v19, "location_mode"

    const/16 v20, 0x0

    .line 5514
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 5518
    const-string/jumbo v19, "location_providers_allowed"

    const-string/jumbo v20, ""

    .line 5517
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 5520
    :cond_b
    const-string/jumbo v18, "no_debugging_features"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 5522
    if-nez v15, :cond_4

    .line 5523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 5524
    const-string/jumbo v19, "adb_enabled"

    const-string/jumbo v20, "0"

    .line 5523
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 5526
    :cond_c
    const-string/jumbo v18, "ensure_verify_apps"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 5527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 5528
    const-string/jumbo v19, "package_verifier_enable"

    const-string/jumbo v20, "1"

    .line 5527
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 5531
    const-string/jumbo v19, "verifier_verify_adb_installs"

    const-string/jumbo v20, "1"

    .line 5530
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 5533
    :cond_d
    const-string/jumbo v18, "no_install_unknown_sources"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 5534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 5535
    const-string/jumbo v19, "install_non_market_apps"

    const/16 v20, 0x0

    .line 5534
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 5557
    :cond_e
    const-string/jumbo v18, "no_adjust_volume"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 5558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-interface {v6, v0, v1, v2, v15}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1
.end method

.method public startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V
    .locals 8
    .param p1, "actualLookupKey"    # Ljava/lang/String;
    .param p2, "actualContactId"    # J
    .param p4, "originalIntent"    # Landroid/content/Intent;

    .prologue
    .line 5851
    invoke-static {p1, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->rebuildManagedQuickContactsIntent(Ljava/lang/String;JLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 5853
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5855
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5857
    .local v2, "ident":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5858
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 5859
    .local v4, "managedUserId":I
    if-gez v4, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5873
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5860
    return-void

    .line 5862
    :cond_0
    :try_start_3
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCrossProfileCallerIdDisabledForUser(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5873
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5867
    return-void

    .line 5870
    :cond_1
    :try_start_5
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 5869
    invoke-static {v5, v1, v6}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5873
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5850
    return-void

    .line 5857
    .end local v4    # "managedUserId":I
    :catchall_0
    move-exception v5

    :try_start_7
    monitor-exit p0

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 5872
    :catchall_1
    move-exception v5

    .line 5873
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5872
    throw v5
.end method

.method public switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 5434
    const-string/jumbo v4, "ComponentName is null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5435
    monitor-enter p0

    .line 5436
    const/4 v4, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5438
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 5440
    .local v2, "id":J
    const/4 v1, 0x0

    .line 5441
    .local v1, "userId":I
    if-eqz p2, :cond_0

    .line 5442
    :try_start_1
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 5444
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 5449
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 5444
    return v4

    .line 5445
    :catch_0
    move-exception v0

    .line 5446
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "DevicePolicyManagerService"

    const-string/jumbo v5, "Couldn\'t switch user"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5449
    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5447
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .line 5448
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 5449
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5448
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5435
    .end local v1    # "userId":I
    .end local v2    # "id":J
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 8
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1768
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sys.secpolicy.camera.off_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1769
    .local v1, "cameraPropertyForUser":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1770
    .local v2, "systemState":Z
    iget v6, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1771
    .local v0, "cameraDisabled":Z
    if-eq v0, v2, :cond_0

    .line 1772
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1774
    .local v4, "token":J
    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v3, "1"

    .line 1777
    .local v3, "value":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1779
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1765
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "token":J
    :cond_0
    return-void

    .line 1774
    .restart local v4    # "token":J
    :cond_1
    :try_start_1
    const-string/jumbo v3, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1778
    .end local v3    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 1779
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1778
    throw v6
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 1785
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 1786
    return-void

    .line 1788
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .line 1789
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->loadDeviceOwner()V

    .line 1790
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->cleanUpOldUsers()V

    .line 1792
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 1794
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUserSetupComplete()V

    .line 1797
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 1798
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1799
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1800
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1802
    .local v2, "userHandle":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 1801
    invoke-direct {p0, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 1799
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1784
    .end local v2    # "userHandle":I
    :cond_1
    return-void
.end method

.method public uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "aliases"    # [Ljava/lang/String;

    .prologue
    .line 3189
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 3191
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 3192
    .local v6, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3194
    .local v2, "id":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 3196
    .local v5, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v7, p2

    if-ge v1, v7, :cond_0

    .line 3197
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v7

    aget-object v8, p2, v1

    invoke-interface {v7, v8}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3202
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3208
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3188
    .end local v1    # "i":I
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_2
    return-void

    .line 3199
    .restart local v1    # "i":I
    .restart local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_0
    move-exception v0

    .line 3200
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v7, "DevicePolicyManagerService"

    const-string/jumbo v8, "from CaCertUninstaller: "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3202
    :try_start_4
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 3204
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v4

    .line 3205
    .local v4, "ie":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v7, "DevicePolicyManagerService"

    const-string/jumbo v8, "CaCertUninstaller: "

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3206
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3208
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 3201
    .end local v4    # "ie":Ljava/lang/InterruptedException;
    .restart local v1    # "i":I
    .restart local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v7

    .line 3202
    :try_start_6
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 3201
    throw v7
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3207
    .end local v1    # "i":I
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_1
    move-exception v7

    .line 3208
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3207
    throw v7
.end method

.method updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 7
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 3021
    iget v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v2

    .line 3022
    .local v2, "timeMs":J
    iget-wide v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 3023
    return-void

    .line 3026
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3028
    .local v0, "ident":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 3029
    const-wide/32 v2, 0x7fffffff

    .line 3037
    :goto_0
    :try_start_0
    iput-wide v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 3038
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Landroid/os/PowerManagerInternal;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3040
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3020
    return-void

    .line 3033
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3034
    const-string/jumbo v5, "stay_on_while_plugged_in"

    const/4 v6, 0x0

    .line 3033
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3039
    :catchall_0
    move-exception v4

    .line 3040
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3039
    throw v4
.end method

.method updateUserSetupComplete()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 6218
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 6219
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6220
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 6221
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6222
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    .line 6223
    .local v4, "userHandle":I
    const-string/jumbo v6, "user_setup_complete"

    invoke-static {v3, v6, v7, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_0

    .line 6225
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 6226
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-nez v6, :cond_0

    .line 6227
    iput-boolean v8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    .line 6228
    monitor-enter p0

    .line 6230
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeDeviceInitializerFromLockTaskPackages(I)V

    .line 6231
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 6221
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6228
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 6217
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "userHandle":I
    :cond_1
    return-void
.end method

.method validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1745
    iget v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v2, :cond_1

    .line 1746
    const/4 v0, 0x0

    .line 1747
    .local v0, "haveOwner":Z
    iget-object v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1748
    iget-object v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ne v2, v3, :cond_2

    .line 1749
    const/4 v0, 0x1

    .line 1753
    :cond_0
    if-nez v0, :cond_1

    .line 1754
    const-string/jumbo v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Previous password owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1755
    const-string/jumbo v4, " no longer active; disabling"

    .line 1754
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1744
    .end local v0    # "haveOwner":Z
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 1747
    .restart local v0    # "haveOwner":Z
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public wipeData(II)V
    .locals 10
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 3342
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 3343
    return-void

    .line 3345
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3348
    monitor-enter p0

    .line 3351
    const/4 v8, 0x0

    .line 3352
    const/4 v9, 0x4

    .line 3351
    :try_start_0
    invoke-virtual {p0, v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3354
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 3355
    .local v1, "cname":Landroid/content/ComponentName;
    if-eqz v1, :cond_3

    .line 3356
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .line 3361
    .local v6, "source":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 3363
    .local v2, "ident":J
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_2

    .line 3364
    :try_start_1
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3365
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v5, 0x0

    .line 3366
    .local v5, "ownsInitialization":Z
    :goto_1
    if-nez p2, :cond_6

    .line 3367
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v5, :cond_6

    .line 3373
    :cond_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "persistent_data_block"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 3372
    check-cast v4, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 3374
    .local v4, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v4, :cond_2

    .line 3375
    invoke-virtual {v4}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3379
    .end local v4    # "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    .end local v5    # "ownsInitialization":Z
    :cond_2
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 3382
    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_7

    const/4 v7, 0x1

    .line 3384
    .local v7, "wipeExtRequested":Z
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DevicePolicyManager.wipeData() from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3383
    invoke-direct {p0, v7, p2, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceNoLock(ZILjava/lang/String;)V

    .line 3341
    return-void

    .line 3358
    .end local v2    # "ident":J
    .end local v6    # "source":Ljava/lang/String;
    .end local v7    # "wipeExtRequested":Z
    :cond_3
    :try_start_3
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .restart local v6    # "source":Ljava/lang/String;
    goto :goto_0

    .line 3365
    .restart local v2    # "ident":J
    :cond_4
    const/4 v5, 0x1

    .restart local v5    # "ownsInitialization":Z
    goto :goto_1

    .line 3364
    .end local v5    # "ownsInitialization":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "ownsInitialization":Z
    goto :goto_1

    .line 3369
    :cond_6
    :try_start_4
    new-instance v8, Ljava/lang/SecurityException;

    .line 3370
    const-string/jumbo v9, "Only device owner admins can set WIPE_RESET_PROTECTION_DATA"

    .line 3369
    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3378
    .end local v5    # "ownsInitialization":Z
    :catchall_0
    move-exception v8

    .line 3379
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3378
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3348
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "cname":Landroid/content/ComponentName;
    .end local v2    # "ident":J
    .end local v6    # "source":Ljava/lang/String;
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 3382
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "cname":Landroid/content/ComponentName;
    .restart local v2    # "ident":J
    .restart local v6    # "source":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "wipeExtRequested":Z
    goto :goto_2
.end method
