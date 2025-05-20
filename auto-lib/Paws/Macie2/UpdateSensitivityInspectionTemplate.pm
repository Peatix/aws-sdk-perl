
package Paws::Macie2::UpdateSensitivityInspectionTemplate;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Excludes => (is => 'ro', isa => 'Paws::Macie2::SensitivityInspectionTemplateExcludes', traits => ['NameInRequest'], request_name => 'excludes');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has Includes => (is => 'ro', isa => 'Paws::Macie2::SensitivityInspectionTemplateIncludes', traits => ['NameInRequest'], request_name => 'includes');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSensitivityInspectionTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/templates/sensitivity-inspections/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::UpdateSensitivityInspectionTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UpdateSensitivityInspectionTemplate - Arguments for method UpdateSensitivityInspectionTemplate on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSensitivityInspectionTemplate on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method UpdateSensitivityInspectionTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSensitivityInspectionTemplate.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $UpdateSensitivityInspectionTemplateResponse =
      $macie2->UpdateSensitivityInspectionTemplate(
      Id          => 'My__string',
      Description => 'My__string',    # OPTIONAL
      Excludes    => {
        ManagedDataIdentifierIds => [ 'My__string', ... ],    # OPTIONAL
      },    # OPTIONAL
      Includes => {
        AllowListIds             => [ 'My__string', ... ],    # OPTIONAL
        CustomDataIdentifierIds  => [ 'My__string', ... ],    # OPTIONAL
        ManagedDataIdentifierIds => [ 'My__string', ... ],    # OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/UpdateSensitivityInspectionTemplate>

=head1 ATTRIBUTES


=head2 Description => Str

A custom description of the template. The description can contain as
many as 200 characters.



=head2 Excludes => L<Paws::Macie2::SensitivityInspectionTemplateExcludes>

The managed data identifiers to explicitly exclude (not use) when
performing automated sensitive data discovery.

To exclude an allow list or custom data identifier that's currently
included by the template, update the values for the
SensitivityInspectionTemplateIncludes.allowListIds and
SensitivityInspectionTemplateIncludes.customDataIdentifierIds
properties, respectively.



=head2 B<REQUIRED> Id => Str

The unique identifier for the Amazon Macie resource that the request
applies to.



=head2 Includes => L<Paws::Macie2::SensitivityInspectionTemplateIncludes>

The allow lists, custom data identifiers, and managed data identifiers
to explicitly include (use) when performing automated sensitive data
discovery.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSensitivityInspectionTemplate in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

