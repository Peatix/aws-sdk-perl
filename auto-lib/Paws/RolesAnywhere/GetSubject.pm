
package Paws::RolesAnywhere::GetSubject;
  use Moose;
  has SubjectId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'subjectId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/subject/{subjectId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RolesAnywhere::SubjectDetailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::GetSubject - Arguments for method GetSubject on L<Paws::RolesAnywhere>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSubject on the
L<IAM Roles Anywhere|Paws::RolesAnywhere> service. Use the attributes of this class
as arguments to method GetSubject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSubject.

=head1 SYNOPSIS

    my $rolesanywhere = Paws->service('RolesAnywhere');
    my $SubjectDetailResponse = $rolesanywhere->GetSubject(
      SubjectId => 'MyUuid',

    );

    # Results:
    my $Subject = $SubjectDetailResponse->Subject;

    # Returns a L<Paws::RolesAnywhere::SubjectDetailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere/GetSubject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubjectId => Str

The unique identifier of the subject.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSubject in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

