
package Paws::LakeFormation::GetWorkUnits;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');
  has QueryId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkUnits');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetWorkUnits');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::GetWorkUnitsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetWorkUnits - Arguments for method GetWorkUnits on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkUnits on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method GetWorkUnits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkUnits.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $GetWorkUnitsResponse = $lakeformation->GetWorkUnits(
      QueryId   => 'MyGetWorkUnitsRequestQueryIdString',
      NextToken => 'MyToken',                              # OPTIONAL
      PageSize  => 1,                                      # OPTIONAL
    );

    # Results:
    my $NextToken      = $GetWorkUnitsResponse->NextToken;
    my $QueryId        = $GetWorkUnitsResponse->QueryId;
    my $WorkUnitRanges = $GetWorkUnitsResponse->WorkUnitRanges;

    # Returns a L<Paws::LakeFormation::GetWorkUnitsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/GetWorkUnits>

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if this is a continuation call.



=head2 PageSize => Int

The size of each page to get in the Amazon Web Services service call.
This does not affect the number of items returned in the command's
output. Setting a smaller page size results in more calls to the Amazon
Web Services service, retrieving fewer items in each call. This can
help prevent the Amazon Web Services service calls from timing out.



=head2 B<REQUIRED> QueryId => Str

The ID of the plan query operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkUnits in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

