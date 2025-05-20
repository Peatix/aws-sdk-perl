
package Paws::IVSRealTime::ImportPublicKey;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PublicKeyMaterial => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'publicKeyMaterial', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IVSRealTime::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportPublicKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ImportPublicKey');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::ImportPublicKeyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::ImportPublicKey - Arguments for method ImportPublicKey on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportPublicKey on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method ImportPublicKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportPublicKey.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $ImportPublicKeyResponse = $ivsrealtime->ImportPublicKey(
      PublicKeyMaterial => 'MyPublicKeyMaterial',
      Name              => 'MyPublicKeyName',       # OPTIONAL
      Tags              => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $PublicKey = $ImportPublicKeyResponse->PublicKey;

    # Returns a L<Paws::IVSRealTime::ImportPublicKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/ImportPublicKey>

=head1 ATTRIBUTES


=head2 Name => Str

Name of the public key to be imported.



=head2 B<REQUIRED> PublicKeyMaterial => Str

The content of the public key to be imported.



=head2 Tags => L<Paws::IVSRealTime::Tags>

Tags attached to the resource. Array of maps, each of the form
C<string:string (key:value)>. See Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging AWS Resources and Tag Editor> for details, including
restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no constraints on tags beyond what is
documented there.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportPublicKey in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

