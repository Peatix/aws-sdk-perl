
package Paws::WorkSpacesThinClient::GetSoftwareSet;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSoftwareSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/softwaresets/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesThinClient::GetSoftwareSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::GetSoftwareSet - Arguments for method GetSoftwareSet on L<Paws::WorkSpacesThinClient>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSoftwareSet on the
L<Amazon WorkSpaces Thin Client|Paws::WorkSpacesThinClient> service. Use the attributes of this class
as arguments to method GetSoftwareSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSoftwareSet.

=head1 SYNOPSIS

    my $thinclient = Paws->service('WorkSpacesThinClient');
    my $GetSoftwareSetResponse = $thinclient->GetSoftwareSet(
      Id => 'MySoftwareSetId',

    );

    # Results:
    my $SoftwareSet = $GetSoftwareSetResponse->SoftwareSet;

    # Returns a L<Paws::WorkSpacesThinClient::GetSoftwareSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/thinclient/GetSoftwareSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the software set for which to return information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSoftwareSet in L<Paws::WorkSpacesThinClient>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

