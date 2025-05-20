
package Paws::SupplyChain::CreateInstance;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has InstanceDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceDescription');
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName');
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has Tags => (is => 'ro', isa => 'Paws::SupplyChain::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has WebAppDnsDomain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'webAppDnsDomain');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/instance');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::CreateInstanceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::CreateInstance - Arguments for method CreateInstance on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstance on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method CreateInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstance.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $CreateInstanceResponse = $scn->CreateInstance(
      ClientToken         => 'MyClientToken',            # OPTIONAL
      InstanceDescription => 'MyInstanceDescription',    # OPTIONAL
      InstanceName        => 'MyInstanceName',           # OPTIONAL
      KmsKeyArn           => 'MyKmsKeyArn',              # OPTIONAL
      Tags                => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      WebAppDnsDomain => 'MyInstanceWebAppDnsDomain',    # OPTIONAL
    );

    # Results:
    my $Instance = $CreateInstanceResponse->Instance;

    # Returns a L<Paws::SupplyChain::CreateInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/CreateInstance>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token for idempotency.



=head2 InstanceDescription => Str

The AWS Supply Chain instance description.



=head2 InstanceName => Str

The AWS Supply Chain instance name.



=head2 KmsKeyArn => Str

The ARN (Amazon Resource Name) of the Key Management Service (KMS) key
you provide for encryption. This is required if you do not want to use
the Amazon Web Services owned KMS key. If you don't provide anything
here, AWS Supply Chain uses the Amazon Web Services owned KMS key.



=head2 Tags => L<Paws::SupplyChain::TagMap>

The Amazon Web Services tags of an instance to be created.



=head2 WebAppDnsDomain => Str

The DNS subdomain of the web app. This would be "example" in the URL
"example.scn.global.on.aws". You can set this to a custom value, as
long as the domain isn't already being used by someone else. The name
may only include alphanumeric characters and hyphens.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstance in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

