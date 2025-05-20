
package Paws::LexModels::GetMigrations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has MigrationStatusEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'migrationStatusEquals');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortByAttribute => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortByAttribute');
  has SortByOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortByOrder');
  has V1BotNameContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'v1BotNameContains');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMigrations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/migrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetMigrationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetMigrations - Arguments for method GetMigrations on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMigrations on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetMigrations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMigrations.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetMigrationsResponse = $models . lex->GetMigrations(
      MaxResults            => 1,                # OPTIONAL
      MigrationStatusEquals => 'IN_PROGRESS',    # OPTIONAL
      NextToken             => 'MyNextToken',    # OPTIONAL
      SortByAttribute       => 'V1_BOT_NAME',    # OPTIONAL
      SortByOrder           => 'ASCENDING',      # OPTIONAL
      V1BotNameContains     => 'MyBotName',      # OPTIONAL
    );

    # Results:
    my $MigrationSummaries = $GetMigrationsResponse->MigrationSummaries;
    my $NextToken          = $GetMigrationsResponse->NextToken;

    # Returns a L<Paws::LexModels::GetMigrationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetMigrations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of migrations to return in the response. The default
is 10.



=head2 MigrationStatusEquals => Str

Filters the list to contain only migrations in the specified state.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">

=head2 NextToken => Str

A pagination token that fetches the next page of migrations. If the
response to this operation is truncated, Amazon Lex returns a
pagination token in the response. To fetch the next page of migrations,
specify the pagination token in the request.



=head2 SortByAttribute => Str

The field to sort the list of migrations by. You can sort by the Amazon
Lex V1 bot name or the date and time that the migration was started.

Valid values are: C<"V1_BOT_NAME">, C<"MIGRATION_DATE_TIME">

=head2 SortByOrder => Str

The order so sort the list.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 V1BotNameContains => Str

Filters the list to contain only bots whose name contains the specified
string. The string is matched anywhere in bot name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMigrations in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

