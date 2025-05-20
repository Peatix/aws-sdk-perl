
package Paws::Macie2::GetSensitivityInspectionTemplateResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Excludes => (is => 'ro', isa => 'Paws::Macie2::SensitivityInspectionTemplateExcludes', traits => ['NameInRequest'], request_name => 'excludes');
  has Includes => (is => 'ro', isa => 'Paws::Macie2::SensitivityInspectionTemplateIncludes', traits => ['NameInRequest'], request_name => 'includes');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has SensitivityInspectionTemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sensitivityInspectionTemplateId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetSensitivityInspectionTemplateResponse

=head1 ATTRIBUTES


=head2 Description => Str

The custom description of the template.


=head2 Excludes => L<Paws::Macie2::SensitivityInspectionTemplateExcludes>

The managed data identifiers that are explicitly excluded (not used)
when performing automated sensitive data discovery.


=head2 Includes => L<Paws::Macie2::SensitivityInspectionTemplateIncludes>

The allow lists, custom data identifiers, and managed data identifiers
that are explicitly included (used) when performing automated sensitive
data discovery.


=head2 Name => Str

The name of the template: automated-sensitive-data-discovery.


=head2 SensitivityInspectionTemplateId => Str

The unique identifier for the template.


=head2 _request_id => Str


=cut

