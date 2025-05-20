
package Paws::CleanRooms::StartProtectedQuery;
  use Moose;
  has ComputeConfiguration => (is => 'ro', isa => 'Paws::CleanRooms::ComputeConfiguration', traits => ['NameInRequest'], request_name => 'computeConfiguration');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has ResultConfiguration => (is => 'ro', isa => 'Paws::CleanRooms::ProtectedQueryResultConfiguration', traits => ['NameInRequest'], request_name => 'resultConfiguration');
  has SqlParameters => (is => 'ro', isa => 'Paws::CleanRooms::ProtectedQuerySQLParameters', traits => ['NameInRequest'], request_name => 'sqlParameters', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartProtectedQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/protectedQueries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::StartProtectedQueryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::StartProtectedQuery - Arguments for method StartProtectedQuery on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartProtectedQuery on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method StartProtectedQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartProtectedQuery.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $StartProtectedQueryOutput = $cleanrooms->StartProtectedQuery(
      MembershipIdentifier => 'MyMembershipIdentifier',
      SqlParameters        => {
        AnalysisTemplateArn => 'MyAnalysisTemplateArn',    # max: 200; OPTIONAL
        Parameters          => {
          'MyParameterName' =>
            'MyParameterValue',    # key: min: 1, max: 100, value: max: 250
        },    # OPTIONAL
        QueryString => 'MyProtectedQuerySQLParametersQueryStringString'
        ,     # max: 500000; OPTIONAL
      },
      Type                 => 'SQL',
      ComputeConfiguration => {
        Worker => {
          Number => 1,          # min: 2, max: 400; OPTIONAL
          Type   => 'CR.1X',    # values: CR.1X, CR.4X; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ResultConfiguration => {
        OutputConfiguration => {
          Distribute => {
            Locations => [
              {
                Member => {
                  AccountId => 'MyAccountId',    # min: 12, max: 12

                },    # OPTIONAL
                S3 => {
                  Bucket => 'MyProtectedQueryS3OutputConfigurationBucketString'
                  ,                                     # min: 3, max: 63
                  ResultFormat     => 'CSV',            # values: CSV, PARQUET
                  KeyPrefix        => 'MyKeyPrefix',    # max: 512; OPTIONAL
                  SingleFileOutput => 1,                # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # min: 1

          },    # OPTIONAL
          Member => {
            AccountId => 'MyAccountId',    # min: 12, max: 12

          },    # OPTIONAL
          S3 => {
            Bucket => 'MyProtectedQueryS3OutputConfigurationBucketString'
            ,                                     # min: 3, max: 63
            ResultFormat     => 'CSV',            # values: CSV, PARQUET
            KeyPrefix        => 'MyKeyPrefix',    # max: 512; OPTIONAL
            SingleFileOutput => 1,                # OPTIONAL
          },    # OPTIONAL
        },

      },    # OPTIONAL
    );

    # Results:
    my $ProtectedQuery = $StartProtectedQueryOutput->ProtectedQuery;

    # Returns a L<Paws::CleanRooms::StartProtectedQueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/StartProtectedQuery>

=head1 ATTRIBUTES


=head2 ComputeConfiguration => L<Paws::CleanRooms::ComputeConfiguration>

The compute configuration for the protected query.



=head2 B<REQUIRED> MembershipIdentifier => Str

A unique identifier for the membership to run this query against.
Currently accepts a membership ID.



=head2 ResultConfiguration => L<Paws::CleanRooms::ProtectedQueryResultConfiguration>

The details needed to write the query results.



=head2 B<REQUIRED> SqlParameters => L<Paws::CleanRooms::ProtectedQuerySQLParameters>

The protected SQL query parameters.



=head2 B<REQUIRED> Type => Str

The type of the protected query to be started.

Valid values are: C<"SQL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartProtectedQuery in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

