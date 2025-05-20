
package Paws::EMR::ListSupportedInstanceTypes;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReleaseLabel => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSupportedInstanceTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::ListSupportedInstanceTypesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListSupportedInstanceTypes - Arguments for method ListSupportedInstanceTypes on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSupportedInstanceTypes on the
L<Amazon EMR|Paws::EMR> service. Use the attributes of this class
as arguments to method ListSupportedInstanceTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSupportedInstanceTypes.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $ListSupportedInstanceTypesOutput =
      $elasticmapreduce->ListSupportedInstanceTypes(
      ReleaseLabel => 'MyString',
      Marker       => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Marker = $ListSupportedInstanceTypesOutput->Marker;
    my $SupportedInstanceTypes =
      $ListSupportedInstanceTypesOutput->SupportedInstanceTypes;

    # Returns a L<Paws::EMR::ListSupportedInstanceTypesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/ListSupportedInstanceTypes>

=head1 ATTRIBUTES


=head2 Marker => Str

The pagination token that marks the next set of results to retrieve.



=head2 B<REQUIRED> ReleaseLabel => Str

The Amazon EMR release label determines the versions of open-source
application packages
(https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-app-versions-6.x.html)
that Amazon EMR has installed on the cluster. Release labels are in the
format C<emr-x.x.x>, where x.x.x is an Amazon EMR release number such
as C<emr-6.10.0>. For more information about Amazon EMR releases and
their included application versions and features, see the I< Amazon EMR
Release Guide
(https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-components.html)
>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSupportedInstanceTypes in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

