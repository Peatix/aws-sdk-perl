
package Paws::WorkSpacesThinClient::UpdateSoftwareSet;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has ValidationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'validationStatus', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSoftwareSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/softwaresets/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesThinClient::UpdateSoftwareSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::UpdateSoftwareSet - Arguments for method UpdateSoftwareSet on L<Paws::WorkSpacesThinClient>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSoftwareSet on the
L<Amazon WorkSpaces Thin Client|Paws::WorkSpacesThinClient> service. Use the attributes of this class
as arguments to method UpdateSoftwareSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSoftwareSet.

=head1 SYNOPSIS

    my $thinclient = Paws->service('WorkSpacesThinClient');
    my $UpdateSoftwareSetResponse = $thinclient->UpdateSoftwareSet(
      Id               => 'MySoftwareSetId',
      ValidationStatus => 'VALIDATED',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/thinclient/UpdateSoftwareSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the software set to update.



=head2 B<REQUIRED> ValidationStatus => Str

An option to define if the software set has been validated.

Valid values are: C<"VALIDATED">, C<"NOT_VALIDATED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSoftwareSet in L<Paws::WorkSpacesThinClient>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

