
package Paws::RedShift::DescribeRedshiftIdcApplications;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has RedshiftIdcApplicationArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRedshiftIdcApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::DescribeRedshiftIdcApplicationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeRedshiftIdcApplicationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeRedshiftIdcApplications - Arguments for method DescribeRedshiftIdcApplications on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRedshiftIdcApplications on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeRedshiftIdcApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRedshiftIdcApplications.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $DescribeRedshiftIdcApplicationsResult =
      $redshift->DescribeRedshiftIdcApplications(
      Marker                    => 'MyString',    # OPTIONAL
      MaxRecords                => 1,             # OPTIONAL
      RedshiftIdcApplicationArn => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Marker = $DescribeRedshiftIdcApplicationsResult->Marker;
    my $RedshiftIdcApplications =
      $DescribeRedshiftIdcApplicationsResult->RedshiftIdcApplications;

    # Returns a L<Paws::RedShift::DescribeRedshiftIdcApplicationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeRedshiftIdcApplications>

=head1 ATTRIBUTES


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the Marker parameter and retrying the command. If the
Marker field is empty, all response records have been retrieved for the
request.



=head2 MaxRecords => Int

The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified MaxRecords
value, a value is returned in a marker field of the response. You can
retrieve the next set of records by retrying the command with the
returned marker value.



=head2 RedshiftIdcApplicationArn => Str

The ARN for the Redshift application that integrates with IAM Identity
Center.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRedshiftIdcApplications in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

