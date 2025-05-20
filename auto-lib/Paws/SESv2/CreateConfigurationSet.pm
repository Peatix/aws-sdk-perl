
package Paws::SESv2::CreateConfigurationSet;
  use Moose;
  has ArchivingOptions => (is => 'ro', isa => 'Paws::SESv2::ArchivingOptions');
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryOptions => (is => 'ro', isa => 'Paws::SESv2::DeliveryOptions');
  has ReputationOptions => (is => 'ro', isa => 'Paws::SESv2::ReputationOptions');
  has SendingOptions => (is => 'ro', isa => 'Paws::SESv2::SendingOptions');
  has SuppressionOptions => (is => 'ro', isa => 'Paws::SESv2::SuppressionOptions');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::Tag]');
  has TrackingOptions => (is => 'ro', isa => 'Paws::SESv2::TrackingOptions');
  has VdmOptions => (is => 'ro', isa => 'Paws::SESv2::VdmOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/configuration-sets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::CreateConfigurationSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::CreateConfigurationSet - Arguments for method CreateConfigurationSet on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationSet on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method CreateConfigurationSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationSet.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $CreateConfigurationSetResponse = $email->CreateConfigurationSet(
      ConfigurationSetName => 'MyConfigurationSetName',
      ArchivingOptions     => {
        ArchiveArn => 'MyArchiveArn',    # min: 20, max: 1011; OPTIONAL
      },    # OPTIONAL
      DeliveryOptions => {
        MaxDeliverySeconds => 1,               # min: 300, max: 50400; OPTIONAL
        SendingPoolName    => 'MyPoolName',    # OPTIONAL
        TlsPolicy          => 'REQUIRE',   # values: REQUIRE, OPTIONAL; OPTIONAL
      },    # OPTIONAL
      ReputationOptions => {
        LastFreshStart           => '1970-01-01T01:00:00',    # OPTIONAL
        ReputationMetricsEnabled => 1,                        # OPTIONAL
      },    # OPTIONAL
      SendingOptions => {
        SendingEnabled => 1,    # OPTIONAL
      },    # OPTIONAL
      SuppressionOptions => {
        SuppressedReasons => [
          'BOUNCE', ...    # values: BOUNCE, COMPLAINT
        ],    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',
          Value => 'MyTagValue',

        },
        ...
      ],    # OPTIONAL
      TrackingOptions => {
        CustomRedirectDomain => 'MyCustomRedirectDomain',
        HttpsPolicy          =>
          'REQUIRE',    # values: REQUIRE, REQUIRE_OPEN_ONLY, OPTIONAL; OPTIONAL
      },    # OPTIONAL
      VdmOptions => {
        DashboardOptions => {
          EngagementMetrics => 'ENABLED',  # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
        GuardianOptions => {
          OptimizedSharedDelivery =>
            'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateConfigurationSet>

=head1 ATTRIBUTES


=head2 ArchivingOptions => L<Paws::SESv2::ArchivingOptions>

An object that defines the MailManager archiving options for emails
that you send using the configuration set.



=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set. The name can contain up to 64
alphanumeric characters, including letters, numbers, hyphens (-) and
underscores (_) only.



=head2 DeliveryOptions => L<Paws::SESv2::DeliveryOptions>

An object that defines the dedicated IP pool that is used to send
emails that you send using the configuration set.



=head2 ReputationOptions => L<Paws::SESv2::ReputationOptions>

An object that defines whether or not Amazon SES collects reputation
metrics for the emails that you send that use the configuration set.



=head2 SendingOptions => L<Paws::SESv2::SendingOptions>

An object that defines whether or not Amazon SES can send email that
you send using the configuration set.



=head2 SuppressionOptions => L<Paws::SESv2::SuppressionOptions>





=head2 Tags => ArrayRef[L<Paws::SESv2::Tag>]

An array of objects that define the tags (keys and values) to associate
with the configuration set.



=head2 TrackingOptions => L<Paws::SESv2::TrackingOptions>

An object that defines the open and click tracking options for emails
that you send using the configuration set.



=head2 VdmOptions => L<Paws::SESv2::VdmOptions>

An object that defines the VDM options for emails that you send using
the configuration set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationSet in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

