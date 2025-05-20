
package Paws::LocationService::DeleteKey;
  use Moose;
  has ForceDelete => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'forceDelete');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'KeyName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metadata/v0/keys/{KeyName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::DeleteKeyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DeleteKey - Arguments for method DeleteKey on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteKey on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method DeleteKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteKey.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $DeleteKeyResponse = $geo->DeleteKey(
      KeyName     => 'MyResourceName',
      ForceDelete => 1,                  # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/DeleteKey>

=head1 ATTRIBUTES


=head2 ForceDelete => Bool

ForceDelete bypasses an API key's expiry conditions and deletes the
key. Set the parameter C<true> to delete the key or to C<false> to not
preemptively delete the API key.

Valid values: C<true>, or C<false>.

Required: No

This action is irreversible. Only use ForceDelete if you are certain
the key is no longer in use.



=head2 B<REQUIRED> KeyName => Str

The name of the API key to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteKey in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

