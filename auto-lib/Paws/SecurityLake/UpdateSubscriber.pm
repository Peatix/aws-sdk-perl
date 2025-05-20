
package Paws::SecurityLake::UpdateSubscriber;
  use Moose;
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::LogSourceResource]', traits => ['NameInRequest'], request_name => 'sources');
  has SubscriberDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subscriberDescription');
  has SubscriberId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'subscriberId', required => 1);
  has SubscriberIdentity => (is => 'ro', isa => 'Paws::SecurityLake::AwsIdentity', traits => ['NameInRequest'], request_name => 'subscriberIdentity');
  has SubscriberName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subscriberName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSubscriber');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/subscribers/{subscriberId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::UpdateSubscriberResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::UpdateSubscriber - Arguments for method UpdateSubscriber on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSubscriber on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method UpdateSubscriber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSubscriber.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $UpdateSubscriberResponse = $securitylake->UpdateSubscriber(
      SubscriberId => 'MyUUID',
      Sources      => [
        {
          AwsLogSource => {
            SourceName => 'ROUTE53'
            , # values: ROUTE53, VPC_FLOW, SH_FINDINGS, CLOUD_TRAIL_MGMT, LAMBDA_EXECUTION, S3_DATA, EKS_AUDIT, WAF; OPTIONAL
            SourceVersion => 'MyAwsLogSourceVersion',    # OPTIONAL
          },    # OPTIONAL
          CustomLogSource => {
            Attributes => {
              CrawlerArn =>
                'MyAmazonResourceName',    # min: 1, max: 1011; OPTIONAL
              DatabaseArn =>
                'MyAmazonResourceName',    # min: 1, max: 1011; OPTIONAL
              TableArn => 'MyAmazonResourceName',  # min: 1, max: 1011; OPTIONAL
            },    # OPTIONAL
            Provider => {
              Location => 'MyS3URI',      # max: 1024; OPTIONAL
              RoleArn  => 'MyRoleArn',    # OPTIONAL
            },    # OPTIONAL
            SourceName => 'MyCustomLogSourceName',   # min: 1, max: 64; OPTIONAL
            SourceVersion =>
              'MyCustomLogSourceVersion',            # min: 1, max: 32; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SubscriberDescription => 'MyDescriptionString',    # OPTIONAL
      SubscriberIdentity    => {
        ExternalId => 'MyExternalId',                    # min: 2, max: 1224
        Principal  => 'MyAwsPrincipal',

      },    # OPTIONAL
      SubscriberName =>
        'MyUpdateSubscriberRequestSubscriberNameString',    # OPTIONAL
    );

    # Results:
    my $Subscriber = $UpdateSubscriberResponse->Subscriber;

    # Returns a L<Paws::SecurityLake::UpdateSubscriberResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/UpdateSubscriber>

=head1 ATTRIBUTES


=head2 Sources => ArrayRef[L<Paws::SecurityLake::LogSourceResource>]

The supported Amazon Web Services services from which logs and events
are collected. For the list of supported Amazon Web Services services,
see the Amazon Security Lake User Guide
(https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html).



=head2 SubscriberDescription => Str

The description of the Security Lake account subscriber.



=head2 B<REQUIRED> SubscriberId => Str

A value created by Security Lake that uniquely identifies your
subscription.



=head2 SubscriberIdentity => L<Paws::SecurityLake::AwsIdentity>

The Amazon Web Services identity used to access your data.



=head2 SubscriberName => Str

The name of the Security Lake account subscriber.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSubscriber in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

