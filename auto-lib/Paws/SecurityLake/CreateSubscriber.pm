
package Paws::SecurityLake::CreateSubscriber;
  use Moose;
  has AccessTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accessTypes');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::LogSourceResource]', traits => ['NameInRequest'], request_name => 'sources', required => 1);
  has SubscriberDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subscriberDescription');
  has SubscriberIdentity => (is => 'ro', isa => 'Paws::SecurityLake::AwsIdentity', traits => ['NameInRequest'], request_name => 'subscriberIdentity', required => 1);
  has SubscriberName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subscriberName', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubscriber');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/subscribers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::CreateSubscriberResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::CreateSubscriber - Arguments for method CreateSubscriber on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSubscriber on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method CreateSubscriber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSubscriber.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $CreateSubscriberResponse = $securitylake->CreateSubscriber(
      Sources => [
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
      ],
      SubscriberIdentity => {
        ExternalId => 'MyExternalId',     # min: 2, max: 1224
        Principal  => 'MyAwsPrincipal',

      },
      SubscriberName => 'MyCreateSubscriberRequestSubscriberNameString',
      AccessTypes    => [
        'LAKEFORMATION', ...              # values: LAKEFORMATION, S3
      ],    # OPTIONAL
      SubscriberDescription => 'MyDescriptionString',    # OPTIONAL
      Tags                  => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Subscriber = $CreateSubscriberResponse->Subscriber;

    # Returns a L<Paws::SecurityLake::CreateSubscriberResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/CreateSubscriber>

=head1 ATTRIBUTES


=head2 AccessTypes => ArrayRef[Str|Undef]

The Amazon S3 or Lake Formation access type.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::SecurityLake::LogSourceResource>]

The supported Amazon Web Services services from which logs and events
are collected. Security Lake supports log and event collection for
natively supported Amazon Web Services services.



=head2 SubscriberDescription => Str

The description for your subscriber account in Security Lake.



=head2 B<REQUIRED> SubscriberIdentity => L<Paws::SecurityLake::AwsIdentity>

The Amazon Web Services identity used to access your data.



=head2 B<REQUIRED> SubscriberName => Str

The name of your Security Lake subscriber account.



=head2 Tags => ArrayRef[L<Paws::SecurityLake::Tag>]

An array of objects, one for each tag to associate with the subscriber.
For each tag, you must specify both a tag key and a tag value. A tag
value cannot be null, but it can be an empty string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSubscriber in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

