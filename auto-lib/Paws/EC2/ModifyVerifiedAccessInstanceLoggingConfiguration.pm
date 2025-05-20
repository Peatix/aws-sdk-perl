
package Paws::EC2::ModifyVerifiedAccessInstanceLoggingConfiguration;
  use Moose;
  has AccessLogs => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessLogOptions', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has VerifiedAccessInstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVerifiedAccessInstanceLoggingConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVerifiedAccessInstanceLoggingConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVerifiedAccessInstanceLoggingConfiguration - Arguments for method ModifyVerifiedAccessInstanceLoggingConfiguration on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVerifiedAccessInstanceLoggingConfiguration on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVerifiedAccessInstanceLoggingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVerifiedAccessInstanceLoggingConfiguration.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVerifiedAccessInstanceLoggingConfigurationResult =
      $ec2->ModifyVerifiedAccessInstanceLoggingConfiguration(
      AccessLogs => {
        CloudWatchLogs => {
          Enabled  => 1,
          LogGroup => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        IncludeTrustContext => 1,
        KinesisDataFirehose => {
          Enabled        => 1,
          DeliveryStream => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        LogVersion => 'MyString',    # OPTIONAL
        S3         => {
          Enabled     => 1,
          BucketName  => 'MyString',    # OPTIONAL
          BucketOwner => 'MyString',    # OPTIONAL
          Prefix      => 'MyString',    # OPTIONAL
        },    # OPTIONAL
      },
      VerifiedAccessInstanceId => 'MyVerifiedAccessInstanceId',
      ClientToken              => 'MyString',                     # OPTIONAL
      DryRun                   => 1,                              # OPTIONAL
      );

    # Results:
    my $LoggingConfiguration =
      $ModifyVerifiedAccessInstanceLoggingConfigurationResult
      ->LoggingConfiguration;

# Returns a L<Paws::EC2::ModifyVerifiedAccessInstanceLoggingConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVerifiedAccessInstanceLoggingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessLogs => L<Paws::EC2::VerifiedAccessLogOptions>

The configuration options for Verified Access instances.



=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure idempotency
of your modification request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> VerifiedAccessInstanceId => Str

The ID of the Verified Access instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVerifiedAccessInstanceLoggingConfiguration in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

